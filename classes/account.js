var mysql = require('mysql');

var con = mysql.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "smarttrack"
});

var data = 'temp';

function characterCheck(input){
    const onlyLettersPattern = /^[A-Za-z0-9.]+$/;
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
    /*
    const p1 = new Promise((resolve, reject)=>{
        resolve((login(49.2, '36')));

    });
    p1.then((value) =>{
        console.log(value);
    });
*/
    var lg = login(49.2, '36');
    setTimeout(() => {console.log(lg);}, 2000);
});

function login(id, passwordHash) {
    var results = 'asd';
    characterCheck([id, passwordHash]);
    const p1 = new Promise((resolve, reject)=>{
        con.query("SELECT PasswordHash FROM employee WHERE EmployeeID='"+id+"'", (err, result, fields) =>{
            if (err) throw err;
            resolve(result)
        });
    });
    p1.then((value) =>{
        data = value;
        results = value;
        return p1;
    });
};
