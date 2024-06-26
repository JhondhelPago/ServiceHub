const express  = require('express');
const multer = require('multer');
const path = require('path');
const bodyParser = require('body-parser');


//functions from mysqlmodule connection
const {
    //user function imports
    get_userId,



    //admin function imports
    get_adminId,
    post_Event

} = require('./mysqlmodule.js');

 
// express app instanciation
const app = express();


app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '..', 'public')));



//multer configuration -> EventFile Storage Directory
const Eventstorage = multer.diskStorage({
    destination: function (req, file, cb){
        cb(null, path.join(__dirname, '..', 'EventsFile'));
    },
    filename: function (req, file, cb){
        const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        const ext = path.extname(file.originalname);
        cb(null, file.fieldname + '-' + uniqueSuffix + ext); //this line creates a new unique filename
    }
});

//object that handles the image file allocation from Events Post
const EventUpload = multer({storage: Eventstorage}); // -> route to handle the form submission with this Multer Storage




//multer configuration -> JobPost Storage Directory
const Jobstorage = multer.diskStorage({
    destination: function (req, file, cb){
        cb(null, path.join(__dirname, '..', 'JobsFile'));
    },
    filename: function (req, file, cb){
        const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        const ext = path.extname(file.originalname);
        cb(null, file.fieldname + '-' + uniqueSuffix + ext);
    }
});

//objecct that handles the image file allocation from Jobs Post
const JobUpload = multer({storage: Jobstorage});





app.post('/EventsPost', EventUpload.array('images', 10), async (req, res) => {

    const formData = req.body;
    const creator_id = formData.creator_id;
    const message = formData.message;
    const filenames = req.files.map(file => file.filename); // const filenames is an array of file names in the formdata
    

    console.log(filenames.length);
    console.log(creator_id);
    console.log(message);
    console.log(message == '');
    console.log(filenames);

    //do not make query execution if there is no data to insert

    if(message === '' && filenames === 0){
        return;
    } 

    //this are is the query logic for the mysql data insertion

    try{
        await post_Event(creator_id, message, filenames);

        console.log('query executed')
        //res.send({OperationStatus: true});
        res.sendFile(path.join(__dirname, '..', 'public', 'testing.html'));     
    
    }catch(error){
        throw error;
        console.log('query failed to execute');
        //res.send({OperationStatus: false});
    }


});



app.post('/JobsPost', JobUpload.array('images', 10), (req, res) => {

    const formData = req.body;
    const message = formData.message;
    const filenames = req.files.map(file => file.filename) // new array with file name 


    console.log(message);
    console.log(filenames);

    

    res.sendFile(path.join(__dirname, '..', 'public', 'testing.html'));

});




//this area is for the job posting multer configuration and route logic



//setting the module MIME type for JavaScript files
app.get('/module.js', (req, res) => {
    res.set('Content-Type', 'application/javascript');
    res.sendFile(path.join(__dirname, 'module.js'));
});



// get request of the html files
app.get('/', (req, res) => {
    //send the login_user.html from the public folder, but the html file is on the upper directory
    res.sendFile(path.join(__dirname, '..', 'public' , 'login_user.html'));
});

app.get('/adminlog', (req, res) => {

    res.sendFile(path.join(__dirname, '..', 'public', 'login_admin.html'));

});

app.get('/homepage', (req, res) => {

    res.sendFile(path.join(__dirname, '..', 'public', 'testing.html'));

});

app.get('/uploadform' , (req, res) => {

    res.sendFile(path.join(__dirname, '..', 'public', 'uploadform.html'));

});

app.get('/jobposting', (req, res) => {

    res.sendFile(path.join(__dirname, '..', 'public', 'jobposting.html'));

});


//app.post that will handle the form post request to validate login session
app.post('/loginSession', async (req, res) => {

    const email = req.body.email;
    const password = req.body.password;

    try{
        const row = await  get_userId(email,password);

        if(row.length > 0){

            res.send({status: true, id: row[0].id});

        }else{
            res.send({status: false, id: null})
        }
    }catch(error){
        console.log(error);
        throw error;
        res.status(500).send('Something Broke!');
    }

    res.end();
    

});


//app.post that will handle the form post request to validate admin login session
app.post('/adminLoginSession', async (req, res) => {
    
    const email = req.body.email;
    const password = req.body.password;
    let role;


    switch(req.body.module){
        case 'Admin':
            role = 'regular';
            break;
        
        case 'Manager':
            role = 'manager';
            break;

        default:
            throw new Error('Invalid Module Entered  from admin login form');
    }

    //console.log(email, password, role);

    try{
        //send the id of the admin
        const row = await get_adminId(email, password, role);

        if(row.length > 0){
            
            res.send({status: true, id: row[0].id});

        }else{
            
            res.send({status: false, id: null});

        }

    }catch(error){
        console.log(error);
        throw error;
    }

    res.end();

});



app.get('/sample_res', (req, res) => {
    res.send('this is a response');
    res.end();
});



app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something broke!');

});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});