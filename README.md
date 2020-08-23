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

## 試したこと

### header タグのスタイルに CSS Modules を適用

header.modules.css を作成。  
header タグの a タグに title クラスを適用する。

```css
header {
    background: rebeccapurple;
    margin-bottom: 1.45rem;
}
div {
    margin: 0 auto;
    maxWidth: 960;
    padding: 1.45rem 1.0875rem;

}
h1 {
    margin: 0;
}
a {
    color: white;
    text-decoration: none;
}
.title {
    font-size: 3.0rem;
}
```

これを適用する header.js にはインラインに CSS が書かれていたが取り払った。

```js
import { Link } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import styles from "./header.module.css"

const Header = ({ siteTitle }) => (
  <header>
    <div>
      <h1>
        <Link className={styles.title} to="/" >
          {siteTitle}
        </Link>
      </h1>
    </div>
  </header>
)

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header
```

### CSS Modules を適用した header タグのスタイルを SCSS に変更

`yarn add node-sass gatsby-plugin-sass` で必要なパッケージをインストール。

header.module.css をコピーして header.modules.scss を作成。CSS からの変更点は header のフォントサイズを変数に切り出しただけ。

```scss
$header-font-size: 3.0rem;

header {
    background: rebeccapurple;
    margin-bottom: 1.45rem;
}
div {
    margin: 0 auto;
    maxWidth: 960;
    padding: 1.45rem 1.0875rem;

}
h1 {
    margin: 0;
}
a {
    color: white;
    text-decoration: none;
}
.title {
    font-size: $header-font-size;
}
```

フォントサイズを `3.0rem` から変更すると、変更した値でフォントサイズが変更することを確認済み。

