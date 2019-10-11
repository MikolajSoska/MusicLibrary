var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    db.query('SELECT diskID, title, authorName, genreName, year FROM musiccd NATURAL JOIN authors NATURAL JOIN genres ORDER BY authorName, title ASC', function (error, data) {
        res.render('index', {title: 'Projekt 2', data: data})
    });
});

module.exports = router;
