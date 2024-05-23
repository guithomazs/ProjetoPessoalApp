const { Router } = require('express');
const querys = require('../querys');

const router = Router();

router.get('/', async (req, res) => {
    const query = await querys.getAllActors();
    return res.status(200).json(query);
})

router.get('/:id', async (req, res) => {
    const { id } = req.params;
    const query = await querys.getActorById(id);
    if (query.length === 0) {
        return res.status(404).json({ message: 'Actor not found' });
    }
    return res.status(200).json(query);
})

module.exports = router;