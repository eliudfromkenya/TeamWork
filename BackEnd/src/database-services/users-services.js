const pg = require('pg');
const { config } = require('./../configurations/system-variables');

const db = new pg.Pool(config);

async function getUsers(req, res) {
    const findAllQuery = 'SELECT * FROM "Users"';
    try {
        const { rows, rowCount } = await db.query(findAllQuery);
        return res.status(200).send({ rows, rowCount });
    } catch(error) {
        return res.status(400).send(error);
    };
};

async function getUserById(req, res) {
     try {
		 //console.log(req);
         const id = parseInt(req.params.id)
         const findAllQuery = 'SELECT * FROM "public"."Users" WHERE "public"."Users"."UserID" = $1 LIMIT 1';
             console.log(id);
        const { rows, rowCount } = await db.query(findAllQuery, id);
        return res.status(200).send({ rows, rowCount });
    } catch({message}) {
        return res.status(400).send('Get by id Error: ' + message);
    };
};



async function createUser(req, res) {
    const findAllQuery = 'SELECT * FROM reflections';
    try {
        const  rows = await db.query(findAllQuery);
        return res.status(200).send({ rows });
    } catch(error) {
        return res.status(400).send(error);
    };
};



async function updateUser(req, res) {
    const findAllQuery = 'SELECT * FROM reflections';
    try {
        const  rows = await db.query(findAllQuery);
        return res.status(200).send({ rows });
    } catch(error) {
        return res.status(400).send(error);
    };
};


async function deleteUser(req, res) {
    const findAllQuery = 'SELECT * FROM reflections';
    try {
        const  rows = await db.query(findAllQuery);
        return res.status(200).send({ rows });
    } catch(error) {
        return res.status(400).send(error);
    };
};



module.exports = {
    getUsers,
    getUserById,
    createUser,
    updateUser,
    deleteUser,
    }