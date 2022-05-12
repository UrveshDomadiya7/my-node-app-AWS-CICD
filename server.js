const express = require('express')
const app = express();

app.get('/healthcheck', (req, res)=>{
    if(process.env.ENV_NODE === "production")
        res.status(200).send({"code": 2000, "msg": "Production Mode: Healthcheck is success once more hello"})
    else
        res.status(200).send({"code": 2000, "msg": "Local Mode: Healthcheck is success once more"})
})

app.listen(3000, () =>{
    console.log("Server is running...");
})
