const express = require("express");
const app = express();
app.use(express.json());
app.use(express.urlencoded({extended: true}));

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
    const result = await db.query(`SELECT * from product WHERE id='${id}';`);
    res.json( result );
});

app.post('/', async (req, res) => {
    const body = req.body;

    if (body.queFaire=="addProduct")
    {
        // console.log("if OK");
        const result = await db.query
        (`INSERT INTO product (title, content, img_src, Id_theme, isDeleted) VALUES ("${body.title}", "${body.content}", '${body.img_src}', '${body.Id_theme}', false)`);
        res.json({data: body, result: true, message:"Ajout d'un produit avec success"});
    }
    else
    {
        if (body.queFaire=="addTheme")
        {
            // console.log("else OK");
            const result = await db.query
            (`INSERT INTO theme (title, description, img_src, isDeleted) VALUES ("${body.title}", "${body.description}", '${body.img_src}', false)`);
            res.json({data: body, result: true, message:"Ajout d'un theme avec success"});
        }

    }
    
});

//methode laurent:
// app.post("/category", async (req, res) => {
//     //créer un category en db
//     const {title, description, image} = req.body;
//     const data = await db.query(`INSERT INTO category (title, description, image) VALUES ('${title}', '${description}', '${image}')`);
//     const inserted = {id:data.insertId, title, description, image};
//     res.json({data: inserted, result: true, message: `category inserted with id = ${inserted.id}`});
// });

// app.post("/product", async (req, res) => {
//     //créer un procuct en db
//     const {title, price, description, image, category_id} = req.body;
//     const data = await db.query(`INSERT INTO product (title, price, description, image, category_id) 
//                                     VALUES ('${title}', '${price}', '${description}', '${image}', '${category_id}')`);
//     const inserted = {id:data.insertId, title, price, description, image, category_id};
//     res.json({data: inserted, result: true, message: `product inserted with id = ${inserted.id}`});
// });

app.put('/theme/:id', async (req, res) => {
// maj cat ayant id:id
    const body = req.body;  
    // REQUEST SQL UPDATE
    const data = await db.query(`UPDATE theme SET title="${body.title}", description="${body.description}", img_src="${body.img_src}", isDeleted="${body.isDeleted}" WHERE id="${body.id}" `);
    res.json({data: body, result: true, message:`Modification du theme ayant id='${body.id}'`});

});
app.put('/product/:id', async (req, res) => {
    // maj product ayant id:id
    const body = req.body;  
    // REQUEST SQL UPDATE
    const data = await db.query(`UPDATE product SET title="${body.title}", content="${body.content}", img_src="${body.img_src}", Id_theme=${body.Id_theme}, isDeleted="${body.isDeleted}" WHERE id="${body.id}" `);
    res.json({data: body, result: true, message:`Modification du theme ayant id='${body.id}'`});

});

app.patch("/theme/:id", async (req, res) => {
    //soft delete de la category ayant l'id:id
    const id = req.params.id;
    await db.query(`UPDATE theme SET isDeleted = 1 WHERE id = ${id}`);
    const data = await db.query(`SELECT * FROM theme WHERE id = ${id}`);
    res.json({data, result: true, message: `theme with id = ${id} deleted (soft)`});
});
app.patch("/product/:id", async (req, res) => {
    //soft delete de la category ayant l'id:id
    const id = req.params.id;
    await db.query(`UPDATE product SET isDeleted = 1 WHERE id = ${id}`);
    const data = await db.query(`SELECT * FROM product WHERE id = ${id}`);
    res.json({data, result: true, message: `product with id = ${id} deleted (soft)`});
});

app.delete("/theme/:id", async (req, res) => {
    //hard delete de la category ayant l'id:id
    const id = req.params.id;
    const data = await db.query(`DELETE FROM theme WHERE id = ${id}`);
    res.json({data: null, result: true, message: `theme with id = ${id} deleted (hard)`});
});
app.delete("/product/:id", async (req, res) => {
    //hard delete de la category ayant l'id:id
    const id = req.params.id;
    const data = await db.query(`DELETE FROM product WHERE id = ${id}`);
    res.json({data: null, result: true, message: `product with id = ${id} deleted (hard)`});
});


const PORT = 5000;
app.listen(PORT, ()=>{
    console.log(`Server running !!! from port : ${PORT}`)
});