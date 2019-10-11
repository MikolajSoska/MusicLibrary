var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    db.query('SELECT genreID, genreName FROM genres ORDER BY genreName ASC', function (error, data) {
        res.render('genres', {title: 'Projekt 2', data: data})
    });
});

router.get('/:genreID', function (req, res, next) {
    var ID = req.params.genreID;
    db.query('SELECT * FROM genres WHERE genreID = ' + ID, function (error, data) {
        res.render('genre', {title: 'Projekt 2', data: data})
    });
});

module.exports = router;