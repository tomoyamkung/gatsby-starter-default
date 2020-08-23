# README

Docker 上に gatsby-starter-default でプロジェクトを作成したもの。  
Gatsby プロジェクトを Docker 上に作成するにはどういう構成になるのかを試すだけのプロジェクト。

ソフトウェアのバージョン：

```sh
bash-5.0$ node --version
v12.18.3
bash-5.0$ nodejs -v
v12.18.3
bash-5.0$ npm -v
6.14.6
bash-5.0$ yarn -v
1.22.4
bash-5.0$ git --version
git version 2.26.2
bash-5.0$ gatsby --version
:
:
Gatsby CLI version: 2.12.87
```

Gatsby プロジェクトの作成：

```sh
bash-5.0$ gatsby new gatsby-starter-default
```

開発サーバの起動：

```sh
bash-5.0$ pwd
/home/dev/gatsby-starter-default/gatsby-starter-default
bash-5.0$ gatsby develop --host 0.0.0.0
:
:
You can now view gatsby-starter-default in the browser.
⠀
  Local:            http://localhost:8000/
  On Your Network:  http://172.22.0.2:8000/
⠀
View GraphiQL, an in-browser IDE, to explore your site's data and schema
⠀
  Local:            http://localhost:8000/___graphql
  On Your Network:  http://172.22.0.2:8000/___graphql
⠀
Note that the development build is not optimized.
To create a production build, use gatsby build
⠀
success Building development bundle - 16.326s
```

