var express = require('express');
var router = express.Router();

router.get('/', function (req, res, next) {
    db.query('SELECT diskID, title, authorName, genreName, year FROM musiccd NATURAL JOIN authors NATURAL JOIN genres ORDER BY authorName, title ASC', function (error, data) {
        res.render('home', {title: 'Projekt 2', data: data})
    });
});

router.get('/cd/:diskID', function (req, res, next) {
    var ID = req.params.diskID;
    db.query('SELECT title, authorName, genreName, year, description, authorID, genreID, diskID FROM musiccd NATURAL JOIN authors NATURAL JOIN genres WHERE diskID = ' + ID, function (error, data) {
        db.query('SELECT * FROM songs WHERE diskID = ' + ID + ' ORDER BY number ASC', function (error, songs) {
            db.query('SELECT * FROM comments WHERE diskID = ' + ID + ' ORDER BY commentID ASC', function (error, comments) {
                res.render('cd', {title: 'Projekt 2', data: data, songs, comments});
            });
        });
    });
});

router.post('/comment/:diskID', function (req, res) {
    var author = req.body.author;
    var text = req.body.text;
    var ID = req.params.diskID;
    var query = 'INSERT INTO comments VALUES(0, ' + ID + ', "' + author + '", "' + text + '")';
    db.query(query, function () {
        res.redirect('/home/cd/' + ID);
    });
});

module.exports = router;
