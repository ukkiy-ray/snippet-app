# README

# Project Title / アプリケーション名
- Snippet App
- heroku app title : snippet-memo-app

[![Image from Gyazo](https://i.gyazo.com/30f46d1b7552c98bec9b54b1a074205c.png)](https://gyazo.com/30f46d1b7552c98bec9b54b1a074205c)


# Overview / アプリケーション概要
### 開発の目的と課題解決
- 日々行っているプログラミング学習の中で、メモしたいと思ったコードやメソッドを手軽に保存やアウトプットをし、また高速な検索を可能にし、学習と開発の効率を向上させることを目的として開発しました。


### 開発にあたる学習計画と設計
- 今回のアプリケーションは Vue.js と Vuetify を利用しより良い UI と UX の実現を重視した SPA 開発の学習を目的としているため、サーバーサイドは Ruby on Rails の scaffold を利用して高速に CRUD の機能を構築しています。

- また、Vue.js と vuetify は CDN で読み込んでいます。そのため、rails側ではルーティングやコントローラーを設定せずに publicフォルダ内に配置した静的ファイルを読み込ませて表示させています。


### 機能と利用方法

#### URL
- [heroku](https://snippet-memo-app.herokuapp.com/) にデプロイしています。ご利用になる方は以下の URL からアクセスしてください。

**挙動を確認する際記事を投稿した場合は、最後に投稿した記事を削除していただくよう宜しくお願い致します。**

- URL : https://snippet-memo-app.herokuapp.com/


#### 新規投稿機能
- ヘッダー右上の NEW SNIPPET を押すとモーダルが開き、フォームが表示されます。
- フォームには「タイトル」「言語」「本文」を入力し、右下の ADD SNIPPET で投稿することができます。
- 「言語」入力欄右の Select from history では、過去の投稿履歴から言語を抽出してリスト化しその中から選択することができます。
- 「本文」入力欄ではマークダウン形式でコードブロックとして投稿することができます。

[![Image from Gyazo](https://i.gyazo.com/4372bb20c49dc35e031e1bcb93ea0161.gif)](https://gyazo.com/4372bb20c49dc35e031e1bcb93ea0161)


#### 投稿編集機能
- 各投稿の UPDATE ボタンを押すとモーダルが表示され、各項目を編集することができます。
- 編集したら右下の UPDATE SNIPPET を押すことで更新することができます。
- 30分以上トラフィックがないと web dyno が sleep してしまうため、更新用モーダルを表示させても項目が反映されない場合は、ページを再読み込みしてから行っていただくよう宜しくお願いします。

[![Image from Gyazo](https://i.gyazo.com/935ce21e96f1db7dcfce431ed855b582.gif)](https://gyazo.com/935ce21e96f1db7dcfce431ed855b582)


#### 削除機能
- 各投稿の DELETE を押して表示されるモーダルから削除できます。
- 削除せずにモーダルを閉じる際は周囲の暗い部分をクリックしてください。

[![Image from Gyazo](https://i.gyazo.com/1fc3b2d64ac4c585d0f1fb209eb5eacc.gif)](https://gyazo.com/1fc3b2d64ac4c585d0f1fb209eb5eacc)


#### 絞り込み機能
- 左上の Select Language 下のリストから言語を選択し言語ごとに絞り込むことができます。
- その下のリストからそれぞれの記事へ飛ぶことができます。

[![Image from Gyazo](https://i.gyazo.com/a37100d7dd78e538c1ab840297a47743.gif)](https://gyazo.com/a37100d7dd78e538c1ab840297a47743)


#### 逐次検索機能
- 右上のSearch Snippet にて打ち込んだ文字で検索できます。

[![Image from Gyazo](https://i.gyazo.com/1672a0217fee8b6fa11696e911872ab5.gif)](https://gyazo.com/1672a0217fee8b6fa11696e911872ab5)


# 今後実装予定の機能
- 個人用のメモとしての機能を想定している為より利便性を向上させるためにユーザー管理機能を実装する予定です。


# DB設計

## Snippets テーブル

| Column    | Type     | Options     |
| --------- | -------- | ----------- |
| title     | string   | null: false |
| language  | string   | null: false |
| contents  | text     | null: false |


# ローカルでの動作方法
- Ruby version 2.6.5

- Ruby on Rails version 6.0.3.4

```
% git clone https://github.com/ukkiy-ray/snippet-app.git

% cd snippet-app
% bundle install

% rails db:create
% rails db:migrate
```