# Freres Memoire

## Installation

```
$ git clone https://github.com/dddrb/freres-memoire.git
$ cd freres-memoire/
$ bundle
$ rake railties:install:migrations
$ rake db:migrate
$ rake db:seed
$ bundle exec rails server
```

## Background processing

```
$ bundle exec sidekiq
```
