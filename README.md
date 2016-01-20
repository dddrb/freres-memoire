# Freres Memoire

花束問題を実装例
http://www.benkyoenkai.org/2015/01/v12.html

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

## Requirements

* [Ruby](https://www.ruby-lang.org/)
* [SQLite](https://www.sqlite.org/cli.html)
* [Redis](http://redis.io/)

## Usage

* http://[Your site]/store : メインサイト
* http://[Your site]/admin : マスターメンテナンス
* http://[Your site]/sidekiq : 非同期処理の管理画面
* http://[Your site]/rails/draw/uml : ドキュメント(UML)

## License

* MIT
