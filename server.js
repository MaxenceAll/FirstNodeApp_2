const express = require("express");
const app = express();
app.use(express.json());

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

app.post('/', async (req, res) => {
    const body = req.body;

    if (req.headers["content-type"]=="addProduct")
    {
        // console.log("if OK");
        const result = await db.query
        (`INSERT INTO product (title, content, img_src, theme_id, isDeleted) VALUES ("${body.title}", "${body.content}", '${body.img_src}', '${body.Id_theme}', false)`);
        res.json({data: body, result: true, message:"body del a requete"});
    }
    else
    {
        if (req.headers["content-type"]=="addCategory")
        {
            // console.log("else OK");
            const result = await db.query
            (`INSERT INTO theme (title, description, img_src, isDeleted) VALUES ("${body.title}", "${body.description}", '${body.img_src}', false)`);
            res.json({data: body, result: true, message:"body del a requete"});
        }

    }
    
});

const PORT = 5000;
app.listen(PORT, ()=>{
    console.log(`Server running !!! from port : ${PORT}`)
});