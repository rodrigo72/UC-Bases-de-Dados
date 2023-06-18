const mysql = require('mysql2');
const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');
dotenv.config();

const pool = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWD,
    database: process.env.DATABASE 
}).promise();

const parseClientes = () => {
    const data = JSON.parse(fs.readFileSync(path.join(__dirname, "model", "clientes.json"), 'utf-8'));
    data.clientes.forEach(async cliente => {
        try {
            let [result] = await pool.query(`
                insert into Cliente (Nome, Email, Telemóvel, NIF) 
                values (?, ?, ?, ?)`,
                [cliente.nome, cliente.email, cliente.phone, cliente.nif]);
  
            cliente.moradas.forEach(morada => {
                pool.query(`
                    insert into ClienteMoradas (ClienteID, \`Morada de envio\`, \`Morada de faturação\`)
                    values (?, ?, ?)`,
                    [result.insertId, morada["Morada de envio"], morada["Morada de faturação"]]);
            })
        }
        catch (err) {
            throw err;
        }
    })
}

const genericParser = async (fileName, queryFn) => {
    const data = JSON.parse(fs.readFileSync(path.join(__dirname, "model", fileName + ".json"), 'utf-8'));
    for (const elem of data[fileName]) {
        try {
            await pool.query(queryFn(elem));
        } catch (err) {
            throw err;
        }
    }
}

const deleteFromTables = (tables) => {
    tables.forEach(async table => {
        try {
            await pool.query(`delete from ${table.name}`);
            if (table.auto) {
                await pool.query(`alter table ${table.name} auto_increment = 1`);
            }
        } catch (err) {
            throw err;
        }
    })
}

const processParsing = async () => {

    parseClientes();

    await genericParser("autores", (autor) => {
        return `INSERT INTO Autor (Nome, Avaliação, Biografia, \`Data de nascimento\`)
                VALUES ('${autor.nome}', ${autor.avaliação}, '${autor.biografia}', '${autor["data de nascimento"]}')`;
    });

    await genericParser("codigosPromocionais", (código) => {
        return `INSERT INTO \`Código promocional\` (Código, Valor, \`Data de início\`, \`Data de fim\`)
                VALUES ('${código.Código}', ${código.Valor}, '${código["Data de início"]}', '${código["Data de fim"]}')`;
    });

    await genericParser("editoras", (editora) => {
        return `INSERT INTO Editora (Nome, Endereço, Descrição, Email, Telefone, Website)
                VALUES ("${editora.Nome}", "${editora.Endereço}", "${editora.Descrição}", "${editora.Email}", "${editora.Telefone}", "${editora.Website}")`;
    });

    await genericParser("fornecedores", (fornecedor) => {
        return `INSERT INTO Fornecedor (Nome, Descrição, Email, Telefone, Endereço)
                VALUES ("${fornecedor.Nome}", "${fornecedor.Descrição}", "${fornecedor.Email}", "${fornecedor.Telefone}", "${fornecedor.Endereço}")`;
    });

    await genericParser("generos", (genero) => {
        return `INSERT INTO Género (Nome, Descrição)
                VALUES ("${genero.Nome}", "${genero.Descrição}")`;
    });

    await genericParser("idiomas", (idioma) => {
        return `INSERT INTO Idioma (Nome)
                VALUES ("${idioma.Nome}")`;
    });

    await genericParser("encomendas", (encomenda) => {
        const valor = encomenda.Valor ? encomenda.Valor : 0;
        let query = `INSERT INTO Encomenda (\`Data de entrega\`, \`Data de envio\`, \`Data de pagamento\`, \`Método de pagamento\`, Estado, Valor, \`Modo de envio\`, Cliente, Código)
                       VALUES ("${encomenda["Data de entrega"]}", "${encomenda["Data de envio"]}", "${encomenda["Data de pagamento"]}", "${encomenda["Método de pagamento"]}", "${encomenda.Estado}", ${valor}, "${encomenda["Modo de envio"]}", ${encomenda.Cliente}`;

        if (encomenda.Código) query += `, "${encomenda.Código}")`;
        else query += `, NULL)`;
        return query;
    });

    await genericParser("livros", (livro) => {
        return `INSERT INTO Livro (\`Nº edição\`, Sinopse, \`Data de publicação\`, Título, Preço, ISBN, Formato, Dimensões, \`Nº de páginas\`, IVA, Desconto, Quantidade, Idioma, Editora)
                VALUES (${livro["Nº edição"]}, "${livro.Sinopse}", "${livro["Data de publicação"]}", "${livro.Título}", ${livro.Preço}, "${livro.ISBN}", "${livro.Formato}", "${livro.Dimensões}", ${livro["Nº de páginas"]}, ${livro.IVA}, ${livro.Desconto}, ${livro.Quantidade}, ${livro.Idioma}, ${livro.Editora})`;
    });

    await genericParser("autorLivro", (autorLivro) => {
        return `INSERT INTO AutorLivro (Autor, Livro)
                VALUES (${autorLivro.Autor}, ${autorLivro.Livro})`;
    });

    await genericParser("encomendaLivro", (encomendaLivro) => {
        return `INSERT INTO EncomendaLivro (Encomenda, Livro, Quantidade)
                VALUES (${encomendaLivro.Encomenda}, ${encomendaLivro.Livro}, ${encomendaLivro.Quantidade})`;
    });

    await genericParser("especializacao", (especializacao) => {
        return `INSERT INTO Especialização (Género, Fornecedor)
                VALUES (${especializacao.Género}, ${especializacao.Fornecedor})`;
    })

    await genericParser("fornecedorLivro", (fornecedorLivro) => {
        return `INSERT INTO FornecedorLivro (Livro, Fornecedor, Valor, Data, Quantidade)
                VALUES (${fornecedorLivro.Livro}, ${fornecedorLivro.Fornecedor}, ${fornecedorLivro.Valor}, "${fornecedorLivro.Data}", ${fornecedorLivro.Quantidade})`;
    })

    await genericParser("generoLivro", (generoLivro) => {
        return `INSERT INTO GéneroLivro (Livro, Género)
                VALUES (${generoLivro.Livro}, ${generoLivro.Género})`;
    })

    await genericParser("reviews", (review) => {
        return `INSERT INTO Review (Cliente, Livro, Visibilidade, Conteúdo, Data, Avaliação)
                VALUES (${review.Cliente}, ${review.Livro}, "${review.Visibilidade}", "${review.Conteúdo}", "${review.Data}", "${review.Avaliação}")`;
    })
}

// deleteFromTables([  
//                     { name: "Autor", auto: true }, 
//                     { name: "ClienteMoradas", auto: true }, 
//                     { name: "Cliente", auto: true },
//                     { name: "`Código promocional`", auto: true },
//                     { name: "Editora", auto: true },
//                     { name: "Fornecedor", auto: true }, 
//                     { name: "Género", auto: true }, 
//                     { name: "Idioma", auto: true },
//                     { name: "Encomenda", auto: true }
//                 ]);

(async () => {
    try {
      await processParsing();
        console.log('Data parsing and insertion completed successfully.');
    } catch (err) {
        console.error('Error occurred during data parsing and insertion:', err);
    } finally {
        pool.end();
    }
})();