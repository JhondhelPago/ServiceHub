const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'servicehub'
}).promise();


//user queries
async function get_userId(email, password){
    try{
        const [row] = await pool.query(`SELECT id FROM user WHERE email = ? AND password = ? `, [email, password]);
        return row;

    }catch(error){
        console.log(error);
        throw error;
    }
}




//admin queries
async function get_adminId(email, password, role){
    try{
        const [row] = await pool.query(`SELECT id FROM admin WHERE email = ? AND password = ? AND role = ?`, [email, password, role]);
        return row;

    }catch(error){
        console.log(error);
        throw error;
    }
}


async function post_Event(Creator_id, description, filesArray){

    filesArray = JSON.stringify(filesArray);

    try{

        await pool.execute(`INSERT INTO event_post (creator, description, imagefiles) VALUES (?, ?, ?)`, [Creator_id, description, filesArray]); 
    
    }catch(error){
        throw error;
        console.log('Error in \'post_Evetns\' function in mysqlmodule.js');
    }


}


// async function show(){
//     console.log(await get_userId('sample1000@gmail.com', '1234'));
// }

// show();

module.exports = {
    //user function exports
    get_userId,



    //admin function exports
    get_adminId,
    post_Event
};