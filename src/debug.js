const {
    //user query exports
    get_userId,




    //admin query exports
    MyDateTime,
    get_adminId,
    fetchEvent

} = require ('./mysqlmodule');

async function show(){
    try{
        let data_id = await get_userId('second1001@gmail.com', '1234');

        console.log(data_id);
    }catch(error){
        console.log(error);
        throw error;
    }
}


async function show_admin(){
    
    try{

        let admin_data = await get_adminId('admin1@gmail.com', '1234', 'regular');

        console.log(admin_data);
    }catch(error){
        console.log(error);
        throw error;
    }
}




//show();
//show_admin();

// console.log(MyDateTime.Timenow());
// console.log(MyDateTime.Datenow());

//console.log(new Date());

// show_admin();

// console.log(MyDateTime.Timenow()); 


async function fetchEventShow(){
    
    try{

        let Events = await fetchEvent();

        console.log(Events);

    }catch(error){
        throw error;
    }
}


fetchEventShow();

