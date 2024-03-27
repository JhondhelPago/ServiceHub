const {
    get_userId
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


show();

