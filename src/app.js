const express  = require('express');
const path = require('path');
const bodyParser = require('body-parser');


//functions from mysqlmodule connection
const {
    get_userId
} = require('./mysqlmodule.js');

 
// express app instanciation
const app = express();


app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '..', 'public')));

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

app.get('/homepage', (req, res) => {

    res.sendFile(path.join(__dirname, '..', 'public', 'testing.html'));

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