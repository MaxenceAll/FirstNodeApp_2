const mysql = require ("mysql2/promise");

let db;
async function connect(){
    if(!db){
        //si rien dans db on fait rien
        db = await mysql.createConnection(

            {
                host: "localhost",
                user: "root",
                database: "tp_mvc"
            }
        );
    }
    return db;
}


async function query(sql){
    const connection = await connect();
    const [results] = await connection.query(sql);
    return results;
}

module.exports={
    query
}