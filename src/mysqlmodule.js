const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'servicehub'
}).promise();

async function get_userId(email, password){
    try{
        const [row] = await pool.query(`SELECT id FROM user WHERE email = ? AND password = ? `, [email, password]);
        return row;

    }catch(error){
        console.log(error);
        throw error;
    }
}


// async function show(){
//     console.log(await get_userId('sample1000@gmail.com', '1234'));
// }

// show();

module.exports = {
    get_userId
};