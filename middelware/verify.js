const jwt = require('jsonwebtoken');

function authenticationToken(req,res,next){
    const authHeader = req.headers['authorization'];
    const accessToken = authHeader && authHeader.split(' ')[1];
    if(accessToken!=null){
        jwt.verify(accessToken,process.env.ACCESS_TOKEN_SECRET,(error,decodedToken)=>{
            // if(error)res.send('YOUR TOKEN IS NOT VALID');
            req.user = decodedToken;
            next();
        })
    }else{
        res.send('you dont have a token')
    }
    
}

module.exports = {authenticationToken}