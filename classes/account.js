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
    
    login(49.2, '36');
    setTimeout(() => {console.log(_log)}, 40);
    signup('Johnathan123', 'jqdafnvqdkfvnkadfvnbaqs');
});

//set the log value to the input provided
function setlog(input){
    _log = input;
}

//check that the login credentials given are correct
function login(id, passwordHash) {
    //check that the input values are safe and contain no special characters
    characterCheck([id, passwordHash]);
    //send a query to the database requesting for the passwordhash of the imployee id provided
    var sql = "SELECT PasswordHash FROM employee WHERE EmployeeID='"+id+"'"
    con.query(sql, (err, result, fields) =>{
        //if there is an error throw one
        if (err) throw err;
        //get the results from the query
        result = JSON.parse(JSON.stringify(result))[0];

        //if the hashes are the same
        if(result['PasswordHash'] == passwordHash){
            //set log to true
            setlog(true);
        }else{
            //if not the same, throw and error
            throw new Error('Incorrect Credentials');
        }
    });    
};


function signup(id, pw) {
    //check that the id and password input are safe
    characterCheck([id,pw]);
    //attempt to insert into employee a new entry with input id and password, and default role of user
	var sql = "INSERT INTO employee (EmployeeID, PasswordHash, Role) VALUES ('"+id+"', '"+pw+"', 'user')";
    con.query(sql, function (err, result) {
    //if there is an error raise it
    if (err) throw err;
    //send a comfirmation message to log
    console.log("employee added");
  });
}
