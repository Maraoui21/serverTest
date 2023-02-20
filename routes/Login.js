const router = require('express').Router();
const jwt = require('jsonwebtoken');
const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require('bcrypt');


router.post('/', async (req,res,next)=>{
    // get all users
    const users = await prisma.users.findMany({});
    // authentication part
    const user = users.find(o=>o.email == req.body.Nom);
    // if user name is not exist
    if(user != null )
    {
        // if hashed password nat equal to user password 
        if(await bcrypt.compare(req.body.password,user.Password))
        {
            // CREATE JSON WEB TOKEN 
            const accessToken = jwt.sign(user,process.env.ACCESS_TOKEN_SECRET)
            res.send({jwt:accessToken,name:user.Nom,Role:user.UserRole,email:user.email});
            }
            else{
            res.send({err:'password is incorrect'})
            } 
    }
    else{
        res.send('user is not exist')
    }
})

module.exports = router;
