const express = require('express');
const createError = require('http-errors');
const morgan = require('morgan');
require('dotenv').config();
const cors = require('cors')
const app = express();

app.use(express.static(process.cwd()+'/public'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(morgan('dev'));
app.use(cors());
app.use('/api', require('./routes/Evenement'));
app.use('/api', require('./routes/Participants'));
app.use('/Login', require('./routes/Login'));
app.use('/users',require('./routes/Users'));




app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/public/index.html')
})

app.use((req, res, next) => {
  next(createError.NotFound());
});

app.use((err, req, res, next) => {
  res.status(err.status || 500);
  res.send({
    status: err.status || 500,
    message: err.message,
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`🚀 @ http://localhost:${PORT}`));
