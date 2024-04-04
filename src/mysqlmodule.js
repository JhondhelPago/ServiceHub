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


async function post_Event(Creator_id, EventTitle, description, filesArray){

    filesArray = JSON.stringify(filesArray);

    try{

        await pool.execute(`
        INSERT INTO event_post
        (creator,
        event_title,
        description,
        imagefiles)
        VALUES (?, ?, ?, ?)`, [Creator_id, EventTitle, description, filesArray]); 
    
    }catch(error){
        throw error;
        console.log('Error in \'post_Evetns\' function in mysqlmodule.js');
    }


}

async function post_edit(postID, Event, Date, Time, Description, TargetAudience){

    //query for editing the post in the MySQL Server

    try{

        await pool.execute(`
        UPDATE event_post 
        SET(
        date_created = ?,
        time_created = ?,
        event_title = ?,
        description = ?,
        target_group = ? 
        WHERE id = ?)`, [Date, Time, Event, Description, TargetAudience, postID]);

    }catch(error){
        throw error;
        console.log('Error in the post_edit function @ mysqlmodule.js');
    }

}


const MyDateTime = {
    Timenow: () => {
        const TheDateTime = new Date();
        const option = {
            timeZone: 'Asia/Manila',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false
        }


        let timeString =  TheDateTime.toLocaleTimeString('en-US', option);

        return timeString;
    },

    Datenow: () => {
        const TheDateTime = new Date();
        
        let year = TheDateTime.getFullYear();
        let month = TheDateTime.getMonth() + 1;
        let day = TheDateTime.getDate();

        return `${year}-${month}-${day}`;
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

    MyDateTime,
    get_adminId,
    post_Event
};