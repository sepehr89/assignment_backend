const http = require('http');
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "assignment1"
});
con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

var url = require('url');
// Create an instance of the http server to handle HTTP requests
let app = http.createServer((req, res) => {  
    // Set a response type of json for the response
    res.writeHead(200, {'Content-Type': 'application/json'});

    var q = url.parse(req.url, true).query;
 
    var sql =  "SELECT Distinct f.srvg_sz, s.servings, f.food, fg.foodgroup, fg.fgcat_id, d.directional FROM assignment1.serv_per_day as s inner JOIN foods as f ON s.fgid=f.fgid inner JOIN food_gro as fg ON f.fgcat_id=fg.fgcat_id inner JOIN dir_sta as d ON d.fgcat_id=fg.fgcat_id where s.ages="+con.escape(q.ages)+" and s.gender="+con.escape(q.gender);
  con.query(sql, function (err, result,fields) {
    if (err) throw err;
    console.log(result);
	
	res.end(JSON.stringify(result));
	
  });
 // con.end();
 
});

// Start the server on port 3000
app.listen(3000, '127.0.0.1');