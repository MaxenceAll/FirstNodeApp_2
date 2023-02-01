const express = require("express");
const app = express();
const cors = require("cors");

app.use(cors());

const db = require("./api/services/database.service");

app.get("/", async (req,res) =>{
    const start = new Date();
    const result = await db.query("SHOW tables ;");
    const stop = new Date();
    const duration = stop.getTime() - start.getTime();
    res.json({duration,result});
});



app.get('/theme', async (req,res) =>{
    // récupérer toutes les lignes de la table THEME 
    const result = await db.query("SELECT * from theme ;");
    res.json(result);
});

app.get('/product', async (req,res) =>{
    // récupérer toutes les lignes de la table article 
    const result = await db.query("SELECT * from product ;");
    res.json(result);
});

// récupérer la ligne de la table theme qui a pour id:id
app.get('/theme/:id', async (req, res) => {
    const id = req.params.id;
    const result = await db.query(`SELECT * from theme WHERE id='${id}';`);
    res.json( result );
});

// récupérer la ligne de la table article qui a pour id:id
app.get('/product/:id', async (req, res) => {
    const id = req.params.id;
    const result = await db.query(`SELECT * from article WHERE id='${id}';`);
    res.json( result );
});


const PORT = 5000;
app.listen(PORT, ()=>{
    console.log(`Server running !!! from port : ${PORT}`)
});