[![Build Status](https://travis-ci.org/heartsofcode/hoc_home.svg?branch=mistress)](https://travis-ci.org/heartsofcode/hoc_home)

# new HOC Website
normale Seite mit Infos zum Hackspace &
einen Log-In-Bereich für Mitmuschis

# Tech
- Rails app: Rails v5.2, Ruby v2.6.6

## Our default branch is called `Mistress`. You are welcome <3!

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rake db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rspec
```

You can fill the database with some test data (we prepared that for you :) )


```
$ rake db:seed
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information on Rails, see the cool tutorial here:
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).

## Deployment

We're using Heroku for the live site, download their cli tool for easy interaction with the production evironment. (You also need access to it, too.)

Assuming `heroku` is the name of your heroku remote, push to it with

`$ git push heroku mistress:master`

Look at the logs

`$ heroku logs --tail`

Use the console

`$ heroku run rails c`

That's it!
