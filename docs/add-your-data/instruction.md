# 講師向け

## 前日

- [![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdzeyelid%2Faoai-studio-handson%2Fupdate-202311%2Fiac%2Fadd-your-data%2Fmain.json)を使い、Azureに下記のリソースを作成する
  - Azure OpenAI
    - デプロイ `gpt-4-32k`
    - デプロイ `text-embedding-ada-002`
  - Storage Account (CORSオン)
  - AI Search
- 端末に下記ソフトウェアをインストールする
  - [Postman](https://www.postman.com/downloads/)
- PDFをダウンロードしておく
  - https://www.city.shinagawa.tokyo.jp/PC/kankyo/kankyo-gomi/gomi-kateigomi/20191127174730.html

## 当日（セッション前）

- Azure OpenAI Studioを開く
- Storage Accountの「fileupload-sources」にあるファイルを削除する
- AI Searchのインデックスを削除する（念のため）
- Postmanを起動しておく
