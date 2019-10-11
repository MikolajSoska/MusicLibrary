var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    db.query('SELECT authorID, authorName FROM authors ORDER BY authorName ASC', function (error, data) {
        res.render('authors', {title: 'Projekt 2', data: data})
    });
});

router.get('/:authorID', function (req, res, next) {
    var ID = req.params.authorID;
    db.query('SELECT * FROM authors WHERE authorID = ' + ID, function (error, data) {
        res.render('author', {title: 'Projekt 2', data: data})
    });
});

module.exports = router;