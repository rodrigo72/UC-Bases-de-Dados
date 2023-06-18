const express = require('express');
const mysql = require('mysql2');
const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');
dotenv.config();

const PORT = process.env.PORT || 3500;

const app = express();
const pool = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWD,
    database: process.env.DATABASE 
}).promise();

app.use(express.json());
app.use('/', express.static(path.join(__dirname, '/public')));

app.get('/createCliente', (req, res) => {
    res.sendFile(path.join(__dirname, "views", "createCliente.html"));
})

const insertCliente = async (nome, email, telemovel) => {
    try {
        const [result] = await pool.query(`
            insert into Cliente (Nome, Email, Telemóvel) 
            values (?, ?, ?)`,
            [nome, email, telemovel]);
        
        const id = result.insertId;
        return {
            id: id,
            nome: nome,
            email: email,
            telemovel: telemovel   
        };
    } catch (err) {
        throw err;
    }
}

app.post('/insertCliente', async (req, res) => {
    const { nome, email, telemovel } = req.body;
	if (!nome || !email || !telemovel)
		return res
			.status(400)
			.json({ message: "Name, email and phone are required." });

	try {
        const result = await insertCliente(nome, email, telemovel);
		res.status(201).json({ success: `New user '${result.id}' created.` });
	} catch (err) {
		res.status(500).json({ message: err.message });
	}
})

app.listen(PORT, () => {
    console.log(`Server running on port: ${PORT}.`);
});