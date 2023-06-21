# セルフペースド ハンズオン資料

ここでは、プロンプトベースのモデルを体験してみましょう。チャット（会話）形式または入力候補形式でAzure OpenAIを試す手順について紹介します。

## 利用するモデルを決める


利用したいモデルを選択しましょう。
https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/concepts/models

### チャット（会話）か入力候補か

ChatGPTとして知られているのはチャット（会話）型で、Azure OpenAI Serviceでは、Chat Completion APIを利用します。

また、GitHub Copilotに代表されるような入力補完型は、Completion APIを利用します。

### モデルファミリ

GPT-3を試す際は、`Davinci`が他のモデルと比べて最も能力が優れているので、検証はこのモデルから始めるとよいとされています。ただし、コストや速度の面においては他のモデルも検証してみるとよいでしょう。

GPT-4を利用するには別途申請が必要です。

### Azure Tech Daysにおける制限事項
GPT-4は別途申請が必要であるため、本ハンズオンでは利用できません。
また、本ハンズオンで用意しているリージョンは「米国東部」であるため、利用できるモデルに限りがあります。

ハンズオン

また、Models List APIを利用して、最新のモデル一覧を取得することができます。
https://learn.microsoft.com/ja-jp/rest/api/cognitiveservices/azureopenaistable/models/list?tabs=HTTP

## Azure OpenAI Studioで動かしてみる

新しいデプロイを作成するときにモデルを選ぶ。

チャットを試したい場合は、gpt-35-turbo
入力補完を試したい場合は、

モデルの処理リソースをデプロイします。

デプロイができたら、チャットまたは入力候補画面からそれぞれ試すことができます。

プロンプトのこつはこちらのどきゅ面をとご参考ください。

- [プロンプト エンジニアリングの概要 | Azure OpenAI Service - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/concepts/prompt-engineering)

## REST APIで実行してみる

- キーの取得
― エンドポイントの確認
- ヘッダの組み立て
- 実行
