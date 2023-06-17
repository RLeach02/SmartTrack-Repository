var mysql = require('mysql');

//for confirming login attempts
var _log = false;

var con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "smarttrack"
});

function characterCheck(input){
    //define a list of alphanumeric characters and full stop
    const onlyLettersPattern = /^[A-Za-z0-9.]+$/;
    //for each input provided
    for(check in input){
        //turn input to a string
        var parameter = input[check].toString();
        //confirm there is no characters
        if(!parameter.match(onlyLettersPattern)){
            //if there are special characters throw and error
            throw new Error('Parameter is incorrect!');
        }
    }
}

con.connect(function(err) {
	if (err) throw err;
	console.log("Connected!");
    
    //addItem('2000','warehouse13', '59', 'TestProduct', 'supplier7')
});

//add item entry to item table
function addItem(RFID, location, ProductId, name, supplier) {
    //check there are that the input values are safe
    characterCheck([RFID, location, ProductId, name, supplier]);
    //create the insert statement for the the new item using our input
	var sql = "INSERT INTO item (RFID, Location, ProductID, ProductName, Supplier) VALUES ('"+RFID+"', '"+location+"', '"+ProductId+"','"+name+"', '"+supplier+"')";
  	//run our query
    con.query(sql, function (err, result) {
    if (err) throw err;
    //create a log when done
    console.log("item entry added");
  });
}

//add supplier entry to supplier table
function addSupplier(name, phone, email, address) {
    //check that the input is safe
    characterCheck([name, phone, email, address]);
    //create our sql statement for adding a supplier
	var sql = "INSERT INTO supplier (CompanyName, Phone, Email, Address) VALUES ('"+name+"', '"+phone+"', '"+email+"', '"+address+"')";
  	//run the query
    con.query(sql, function (err, result) {
    if (err) throw err;
    //create a confirmation log when completed
    console.log("supplier entry added");
  });
}

/*
function addInventoryEntry(id, location, name, stock) {
    //check the input is safe
    characterCheck([id, location, name, stock]);
    //create the sql statement for inserting into inventory
	var sql = "INSERT INTO inventory (ProductID, Location, ProductName, Stock) VALUES ('"+id+"', '"+location+"', '"+name+"', '"+stock+"')";
  	con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("inventory entry added");
  });
}
*/