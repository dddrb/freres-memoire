# Components

花束問題の解決に利用したコンポーネント

## Ruby on Rails

### [Freres Memoire](https://github.com/dddrb/freres-memoire)

* Engine を束ねる プラットフォーム。
* 基本的に Engineをセットするコード以外 は書かない。

## Rails Engine

### [Bouquet Core](https://github.com/dddrb/bouquet/tree/master/core)

* データベース構成の管理とデータベースを操作する。
* データベースは RDB の SQLite, PostgreSQL, MySQL が利用できる。

### [Bouquet Gate](https://github.com/dddrb/bouquet/tree/master/gate)

* データベースの操作を REST API で提供する。
* REST API のリクエストを非同期で処理する。
    * 非同期処理のキューは KVM の Redis を利用する。

### [Bouquet Store](https://github.com/dddrb/bouquet/tree/master/store)

* 店舗サイトを提供する。
* Node.js で記述した コード を Webpack で Rails に設置する。
* React and Redux でクライアントを提供する。


## Engine List

今回は3つの Engine で実装したが、セキュアな実装をするには まだ複数の Engine が必要

* bouquet-core
    * 意味：本店
    * データベースの操作
* bouquet-devops
    * 意味：保全
    * 開発支援向けインタフェース
* bouquet-cellar
    * 意味：地下
    * バックグラウンド処理
* bouquet-care:
    * 意味：世話人(caretaker)
    * 認証・認可の管理
* bouquet-gate
    * 意味：出入口
    * REST API
* bouquet-way
    * 意味：道路
    * REST API Proxy
* bouquet-branch
    * 意味：支店
    * REST API Client
* bouquet-office
    * 意味：営業所
    * 業務向けインタフェース
* bouquet-store
    * 意味：店舗
    * 顧客向けインタフェース
