# 講師向け

## 前日

- [![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdzeyelid%2Faoai-studio-handson%2Fmain%2Fiac%2Fon-your-data%2Fmain.json)を使い、Azureに下記のリソースを作成する
  - Azure OpenAI
    - デプロイ `gpt-4-32k`
    - デプロイ `text-embedding-ada-002`
  - Storage Account (CORSオン)
  - AI Search
- 端末に下記ソフトウェアをインストールする
  - [Postman](https://www.postman.com/downloads/)
- PDFをダウンロードしておく
  - [Surface Pro 4 ユーザー ガイド](https://download.microsoft.com/download/2/9/B/29B20383-302C-4517-A006-B0186F04BE28/surface-pro-4-user-guide_ja-jp.pdf)から「surface-pro-4-user-guide_ja-jp.pdf」をダウンロードする

## 当日（セッション前）

- Storage Accountの「fileupload-sources」にあるファイルを削除する
- AI Searchのインデックスを削除する（念のため）
- Azure OpenAI Studioを開く
- Postmanを起動しておく
