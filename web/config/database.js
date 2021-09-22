const mysql = require('mysql');
const config = require('./db_info.json');


/*
· host : 사용할 DB가 설치된 호스트의 IP
· port : DB를 설치할 때 사용자가 지정한 포트번호. 따로 지정해주지 않았다면 기본값은 3306이다.
· user : DB의 user 이름
· password : DB를 설치할 때 사용자가 지정한 비밀번호
· database : 사용할 데이터베이스의 이름
*/


var pool = mysql.createPool(config);

function getConnection(callback) {
  pool.getConnection(function (err, conn) {
    if(!err) {
      callback(conn);
    }
  });
}

module.exports = getConnection;

