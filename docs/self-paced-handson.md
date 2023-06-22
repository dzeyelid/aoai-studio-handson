# セルフペースド ハンズオン資料

プロンプトベースのモデルを体験してみましょう。ここでは、GPT-3.5のモデルを利用して、チャット（会話）形式でAzure OpenAIを試す手順について紹介します。

## 注意事項

Azure OpenAI Serviceはトークン数などに制限があります。本ハンズオンでは、みなさんに利用いただけるように環境を用意しておりますが、複数回の開催を予定しており多くの方に利用いただきたいので、節度を持った利用をお願いいたします。（とはいえ、故意に多量の入力をしたり、パラメータを上げすぎたりしなければ、大丈夫です。）

詳しくは、下記ドキュメントをご参考ください。

- [Azure OpenAI Service のクォータと制限 - Azure Cognitive Services | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/quotas-limits)

## Azure OpenAI Studioを開く

まず、Azure OpenAI Studioを開きましょう。

- https://oai.azure.com/

※ 本来、Azure OpenAI Serviceを利用するには、Azureポータルなどからそのリソースをデプロイする必要があります。本ハンズオンでは、すでにデプロイ済みかつ会場の端末はAzureアカウントにサインイン済みなので、Azure OpenAI Studioをひらいてすぐ利用できます。

## デプロイを確認する

次に、Azure OpenAI Serviceを利用するにはまず、モデルをデプロイする必要があります。

本ハンズオンでは、すでにデプロイを済ませてあるので、Azure OpenAI Studioの「デプロイ」画面を開き、GPT-3.5のモデル（「モデル名」に`gpt35-turbo`と表示されている）のデプロイがあることを確認しておきましょう。

![Azure OpenAI Studioでデプロイを確認する](./images/aoai-studio/deployment_001.png)

## モデルを試す

それでは早速、プレイグラウンドでモデルを使ってみましょう。

まず、Azure OpenAI Studioで「チャット」画面を開きます。

ChatGPTのプレイグラウンドでは、「アシスタント セットアップ」「チャット セッション」「Configuration」の入力欄があります。

さいしょに、「Configuration」の「デプロイ」の選択が、前述で確認したものであることを確認してください。もし異なる場合は、選択し直してください。

それでは、「アシスタント セットアップ」で、セットアップを行いましょう。

「システム メッセージ」では、アシスタントの性格や、どんな振る舞いをさせるかや応答に含めてほしいコンテキストを指定します。まずは、「Use a system message template」のプルダウンから、「Empty Example」を選択してみましょう。

選択したら、「変更の保存」を選択して保存してください。「システム メッセージを更新しますか?」というポップアップが表示された場合、システム メッセージの更新によりチャット セッションでの会話の履歴が消去されることになる旨を確認されます。問題ない場合は、「続行」を選択して進めてください。

「チャット セッション」でアシスタントと会話をしてみましょう。「User message」から、以下のメッセージを順に送信してみてください。

- こんにちは
- サインについて教えて
- パイとは？
- どんな時に使うの？

さし障りのない応答が返ってきたかと思います。

また、「パイとは？」の後に「どんな時に使うの？」と問いかけると、直前のパイに関する応答が得られたと思います。このように、会話に特化したモデルでは会話の流れを考慮して応答を返させることができます。

それでは、「システム メッセージ」でアシスタントの振る舞いを指定してみましょう。

```
あなたは、数学について詳しいアシスタントです。
```

再度同じ会話をしてみます。

- こんにちは
- サインについて教えて
- パイとは？
- どんな時に使うの？

数学について詳しい会話になりましたか？

なお、必ずしもシステム メッセージに忠実な応答が返されるわけではありませんが、アシスタントの振る舞いを細かく指示できることが確認できたかと思います。

## トークンについて確認する

Azure OpenAI Serviceでは、1リクエストにつき利用できる「トークン」の上限が決まっており、送信する内容と応答で消費します。モデルによってトークンの最大値が異なり、本ハンズオンで使用している`gpt-35-turbo`では、 _4,096_ です。

実際のトークン量は内容により算出され、Azure OpenAI Studioではその目安を確認することができます。チャットの場合、「Configuration」の「デプロイ」タブの「現在のトークン数」からその目安を確認することができます。オンカーソルでその内訳も確認できます。

## パラメータを試す

次に、パラメータを試してみましょう。

「Configuration」の「パラメータ」タブを開いてみます。設定できるパラメータのうち、主要なものを紹介します。

| パラメータ | 説明 |
|----|----|
| 最大応答 `Max response` | Azure OpenAI Serviceが返す応答の最大トークン数を指定する |
| 温度 `Temperature` | ランダム性を制御する。値を下げると反復的で決定的な応答が増え、値を上げると予期しない応答や独創的な応答が増えるとされている。 |
| 上位 P `Top P` | ランダム性を制御する。値を下げると、トークンの選択が可能性が高いトークンに絞り込まれ、値を上げると、可能性の高いトークンと低いトークンの両方から選択するとされている。 |

`Temperature`と`Top P`はどちらもランダム性を制御するパラメータですが、検証時は片方ずつ試すことが推奨されています。

他のパラメータ含め、詳細についてはドキュメン語をご参照ください。

- [チャット セッション - 設定 | クイック スタート - Azure OpenAI Service で ChatGPT と GPT-4 の使用を開始する - Azure OpenAI Service | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/chatgpt-quickstart?tabs=command-line&pivots=programming-language-studio#settings)
- [チャット入力候補 | Azure OpenAI Service の REST API リファレンス - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/reference#chat-completions)

## 自由に試してみる

ここまでで基本的な使い方をご紹介しました。ここからはぜひ自由に試してみてください。

プロンプトのコツはこちらのドキュメントをご参考ください。

- [プロンプト エンジニアリングの概要 | Azure OpenAI Service - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/concepts/prompt-engineering)

## REST APIで実行してみる

- キーの取得
- エンドポイントの確認
- ヘッダの組み立て
- 実行

----

## [備考] 環境構築

- ブラウザ
- Azureアカウント
  - Azure OpenAI利用申請済みであること
- Postman