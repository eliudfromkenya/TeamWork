// Basic connection
const { Pool } = require('pg');

const config = {
    host: 'localhost',
    user: 'postgres',
    password: '',
    database: 'library'
};

const pool = new Pool(config);

const getArticles = async () => {
    try {
        const res = await pool.query('SELECT * FROM Articles');
        // console.log(res)
        console.log(res.rows);
        pool.end();
    } catch (e) {
        console.log(e);
    }
};


const getArticle = async (articleId) => {
    try {
        const res = await pool.query('SELECT * FROM Articles WHERE ArtcleId = $1', [articleId]);
        // console.log(res)
        console.log(res.rows);
        pool.end();
    } catch (e) {
        console.log(e);
    }
};


const insertArticle = async () => {
    try {
        const text = 'INSERT INTO users(username, password) VALUES ($1, $2)';
        const values = ['john', 'john1234'];

        const res = await pool.query(text, values);
        console.log(res)
        pool.end();
    } catch (e) {
        console.log(e);
    }
};

const deleteArticle = async () => {
    try {
        const text = 'DELETE FROM users WHERE username = $1';
        const value = ['john'];
        const res = await pool.query(text, value);
        console.log(res)
        pool.end();
    } catch (e) {
        console.log(e);
    }
};

const putArticle = async () => {
    const text = 'UPDATE users SET username = $1 WHERE username = $2';;
    const values = ['John', 'ryan'];
    const res = await pool.query(text, values);
    console.log(res)
    pool.end();
};


const patchArticle = async () => {
    const text = 'UPDATE users SET username = $1 WHERE username = $2';;
    const values = ['John', 'ryan'];
    const res = await pool.query(text, values);
    console.log(res)
    pool.end();
};

getArticles();