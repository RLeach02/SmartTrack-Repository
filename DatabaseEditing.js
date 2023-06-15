var mysql = require('mysql');

var con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "smarttrack"
});

con.connect(function(err) {
	if (err) throw err;
	console.log("Connected!");
	//addInventoryEntry('69', 'Your Mums house', 'SuckIt', 5);
	//addItem('69', 'a', 'b', 'c');
	//addEmployee('1','g','i');
	//getEmployeeBy('g','PasswordHash')
	populateItem();
	//console.log((Math.floor(Math.random()*10)).toString());
});

//generic get command for filtered table data
function getBy(table, input, filter) {
	con.query("SELECT * FROM "+table+" WHERE "+filter+"='"+input+"'", function (err, result, fields) {
	  if (err) throw err;
	  console.log(result);
	});
};

//all of the simplied filter commands for getting info from each table
function getItemBy(input, filter){
	getBy('item', input, filter);
};
function getEmployeeBy(input, filter){
	getBy('employee', input, filter);
};
function getInventoryBy(input, filter){
	getBy('inventory', input, filter);
};
function getSupplierBy(input, filter){
	getBy('supplier', input, filter);
};

//add employee entry to employee table
function addEmployee(id, pw, role) {
	var sql = "INSERT INTO employee (EmployeeID, PasswordHash, Role) VALUES ('"+id+"', '"+pw+"', '"+role+"')";
  	con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("employee added");
  });
}

//add inventory entry to inventory table
function addInventoryEntry(id, location, name, stock) {
	var sql = "INSERT INTO inventory (ProductID, Location, ProductName, Stock) VALUES ('"+id+"', '"+location+"', '"+name+"', '"+stock+"')";
  	con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("inventory entry added");
  });
}

//add item entry to item table
function addItem(RFID, location, ProductId, name, supplier) {
	var sql = "INSERT INTO item (RFID, Location, ProductID, ProductName, Supplier) VALUES ('"+RFID+"', '"+location+"', '"+ProductId+"','"+name+"', '"+supplier+"')";
  	con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("item entry added");
  });
}

//add supplier entry to supplier table
function addSupplier(name, phone, email, address) {
	var sql = "INSERT INTO supplier (CompanyName, Phone, Email, Address) VALUES ('"+name+"', '"+phone+"', '"+email+"', '"+address+"')";
  	con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("supplier entry added");
  });
}

//compile test data
function populateEmployee(){
	for (let i = 1; i < 10; i++) {
		addEmployee(i.toString()+((i)*2.3).toString(), ((i+i)*i^i), 'manager')
	  }
}

function populateItem(){
	var a = '';
	for (let i = 1; i < 100; i++) {
		a = (Math.floor(Math.random()*100)).toString()
		addItem(i.toString(), 'warehouse'+(Math.floor(Math.random()*10)).toString(), a,'Product'+a, 'Supplier'+(Math.floor(Math.random()*100)).toString());
	  }
}

function populateInventory(){
	for (let i = 1; i < 100; i++) {
		addInventoryEntry((Math.floor(Math.random()*1000)).toString(),'warehouse'+(Math.floor(Math.random()*10)).toString(),'Product'+(Math.floor(Math.random()*100)).toString(), (Math.floor(Math.random()*1000)).toString());
	  }
}

function populateSupplier(){
	for (let i = 1; i < 100; i++) {
		addSupplier('Supplier'+(i).toString(), 'phone'+(i).toString(), 'email'+(i).toString(), 'address'+(i).toString());
	  }
}