var mysql = require('mysql');

var con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "smarttrack"
});

function characterCheck(input){
    const onlyLettersPattern = /^[A-Za-z0-9]+$/;
    for(check in input){
        console.log(input[check]);
        var parameter = input[check].toString();
        if(!parameter.match(onlyLettersPattern)){
            throw new Error('Parameter is incorrect!');
        }
    }
}

con.connect(function(err) {
	if (err) throw err;
	console.log("Connected!");
	//viewInventory();
    //searchItem("63");
    updateItem(50, "test", 'test', 'test', 'supplier0')
    //test('inventory','1','2','3')
    //characterCheck('test1');
});

function viewInventory() {
	con.query("SELECT * FROM inventory", function (err, result, fields) {
	  if (err) throw err;
	  console.log(result);
	});
};

function searchItem(RFID) {
    characterCheck(RFID);
	con.query("SELECT * FROM item WHERE RFID='"+RFID+"'", function (err, result, fields) {
	  if (err) throw err;
	  console.log(result);
	});
};


function updateItem(RFID, location, id, name, supplier) {
    characterCheck([RFID, location, id, name, supplier]);
	con.query("UPDATE item SET Location='"+location+"', ProductID='"+id+"', Supplier='"+supplier+"', ProductName='"+name+"'  WHERE RFID='"+RFID+"'", function (err, result, fields) {
	  if (err) throw err;
	  console.log(result);
	});
};


function test(table, input, filter) {
    characterCheck([table, input, filter]);
	con.query(`SELECT * FROM ${con.escape(table)}`, function (err, result, fields) {
	  if (err) throw err;
	  console.log(result);
	});
};
