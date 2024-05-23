const connection = require('./connection')

const getAllActors = async () => {
    const [query] = await connection.execute('SELECT * FROM finance.actors');
    return query;
}

const getActorById = async (id) => {
    const [query] = await connection.execute('SELECT * FROM finance.actors WHERE id = ?', [id]);
    return query;
}

module.exports = { getAllActors, getActorById }