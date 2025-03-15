# CameraConversationAI

## Introduction

AIとの対話ができるaituber-kitにカメラによる人物認識と音声の自動入力機能を加えたもの
Difyを使う場合のみカメラ前の人物に応じて対話内容が変わります。
人物のID（DifyのuserId）はカメラに初めて認識された日時(yyyymmdd_hhmmss）とカメラにより推定された年代と性別（male/female)を連結した文字列になります。

## Installation

### 対話フロー（Difyアプリ）

DSLファイル（[Dify_App.dsl](https://github.com/RimgO/CameraConversationAI/blob/main/Dify_APP.dsl)）をインポートしてアプリ（対話AI）を作成
OpenAI等のAPIキーを設定
Difyアプリを公開しAPIKeyを発行

### 人物認識アプリ（angular-face-api-age-detection）

[angular-face-api-age-detection](https://github.com/RimgO/angular-face-api-age-detection)をgit clone
npm install axios --save
npm i && npm startで起動
ブラウザ(Chrome）でlocalhost:4200にアクセス
ブラウザのカメラ,マイクのアクセスを許可する
もう１つターミナルを起動し、以下を実行
cd src && python server.py
動かない場合はFork元を一度起動して推論結果（顔の枠と年代/感情）が出たらこちらのリポジトリの内容を上書いてください。

### aituber-kit

[aituber-kit](https://github.com/RimgO/aituber-kit)をgit clone
npm install axios --save
npm i && npm run devで起動
ブラウザ(Chrome）でlocalhost:3000にアクセス

以下の設定を変更
[AI設定]
AIサービス：Dify
API キー：Difyのアプリで発行
ベースURL：Difyの設定に合わせる（例：http://localhost/v1）

[音声設定]
音声合成エンジン：Style-Bert-VITS2
サーバーURL：Style-Bert-VITS2の設定に合わせる（例：http://127.0.0.1:5055）

[その他]
回答欄を表示：ON
回答欄にキャラクター名表示：ON
ユーザー発言にタイムスタンプを含める：ON


## Submodules

This repository includes the following submodules:
- [aituber-kit](https://github.com/RimgO/aituber-kit)
- [angular-face-api-age-detection](https://github.com/RimgO/angular-face-api-age-detection)
