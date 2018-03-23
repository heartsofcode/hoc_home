[![Build Status](https://travis-ci.org/heartsofcode/hoc_home.svg?branch=mistress)](https://travis-ci.org/heartsofcode/hoc_home)

# new HOC Website
normale Seite mit Infos zum Hackspace &
einen Log-In-Bereich für Mitmuschis

# Tech
- Rails app: Rails v5.1, Ruby v2.4.2

## Our default branch is called `Mistress`. You are welcome <3!

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rspec
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information on Rails, see the cool tutorial here:
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).
