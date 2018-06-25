<<<<<<< HEAD
# nodeProject
## Synopsis

This application search tweets from the mongodb database and display results. You can add your comment in your searched tweets. It also displays the map about perticular tweet.

## Code Example

You can see that index route is actually handling get and post requests. here is a code snippet:

```sh
router.post('/search', function(req, res) {

    // Set our internal DB variable
    var db = req.db;

    // Get our form values. These rely on the "name" attributes
    var userName = req.body.username;
    //var userEmail = req.body.useremail;
    global = userName;
    // Set our collection
    var collection = db.get('tweets');

    var query= {"text" : new RegExp(userName,"i")};

    // Submit to the DB
    collection.find(query, function (err, docs) {
        if (err) {
            
        }
        else {
            // And forward to success page
            res.render('search', {
            "search" : docs, "userName" : userName, title: 'Find Tweets Project' });
          
        }
        
    });
});
```

## Motivation

While this was an academic project but it is also a small tutorial for understanding a node application based on rest services that make use of mongodb, front end and apis.

## Installation

Install nodejs and mongodb. You will also need to install npm and express middleware to run and understand this project.

## API Reference

I have used google maps api. You can refer to them at https://developers.google.com/maps/documentation/javascript/adding-a-google-map

## Contributors

No contributes as of now. You are free to contact me if you like this project.
## License

MIT
=======
# gitAutoCommit
GitHub auto commit script
>>>>>>> 03266e43355b0fdfa857407312cc454b5f87ced0
