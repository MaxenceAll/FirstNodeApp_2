const express = require("express");
const app = express();

app.get("/", (req,res) =>{
    res.send("OK");
});

app.get('/test', (req,res) =>{
    res.send("test");
});

app.get("*", (req,res) =>{
    res.send("**** test");
});

const PORT = 5000
app.listen(PORT, ()=>{
    console.log(`Server running !!! from port : ${PORT}`)
});