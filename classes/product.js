var mysql = require('mysql');

var entry = 'temp';

var con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "smarttrack"
});

function characterCheck(input){
    const onlyLettersPattern = /^[A-Za-z0-9]+$/;
    for(check in input){
        //console.log(input[check]);
        var parameter = input[check].toString();
        if(!parameter.match(onlyLettersPattern)){
            throw new Error('Parameter is incorrect!');
        }
    }
}

con.connect(function(err) {
	if (err) throw err;
	console.log("Connected!");

  //test methods

  searchItem("63");
  //updateItem('63', 'warehouse7', 14, 'testName','supplier0');
  //viewInventory()

  //delay the use of the variable data so that it doesn't get used before its been assigned
  setTimeout(() => {
    for (let i = 0; i < entry.length; i++){
      console.log(entry[i]);
  }}, 10);
});

function setEntry(input){
  //set entry as input
  entry = input;
}

function viewInventory() {
  //get all entries from item
	con.query("SELECT * FROM item", function (err, result, fields) {
    //if there is an issue throw an error
	  if (err) throw err;
    //set them as entry
    setEntry(result);
	});
};

function searchItem(RFID) {
  //check that the input is safe
    characterCheck([RFID]);
    //query for all items with the input RFID
    con.query("SELECT * FROM item WHERE RFID='"+RFID+"'", function (err, result, fields) {
      //if there is an issue throw and error
      if (err) throw err;
      //set entry as result
      setEntry(result)
      });
};

function updateItem(RFID, location, id, name, supplier) {
  //confirm the input is safe
  characterCheck([RFID, location, id, name, supplier]);
  //update any entries with the given RFID with the new details
  con.query("UPDATE item SET Location='"+location+"', ProductID='"+id+"', Supplier='"+supplier+"', ProductName='"+name+"'  WHERE RFID='"+RFID+"'", function (err, result, fields) {
    //if there is an issue throw and error
    if (err) throw err;
    //send a confirmation log
    console.log('update complete');
    });
};


//ignore for now
/*
function updateStock(id, location, count) {
  characterCheck([location, id]);
  var sql = "UPDATE inventory SET stock = stock + "+count+" WHERE Location = '"+location+"' AND ProductID = '"+id+"'";
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    console.log('update complete');
    });
};

function updateInventory(){
  var sql = "SELECT * FROM item"
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    result = JSON.parse(JSON.stringify(result));
    var list = [];
    //console.log(result);
    for(item in result){
      console.log(item['Location'])
    }
    console.log(list);
    });
}
*/

