# セルフペースド ハンズオン資料

Azure OpenAI Studioを利用して、チャット（会話）形式のモデルを体験してみましょう。

- Azure OpenAI StudioでGPT-4モデルを試す
- Azure OpenAI StudioでAdd your dataを試す
- (オプション)REST APIでAdd your dataを試す

## 注意事項

Azure OpenAI Serviceはトークン数などに制限があります。本ハンズオンでは、みなさんに利用いただけるように環境を用意しておりますが、複数回の開催を予定しており多くの方に利用いただきたいので、節度を持った利用をお願いいたします。（とはいえ、故意に多量の入力をしたり、パラメータを上げすぎたりしなければ、大丈夫です。）

詳しくは、下記ドキュメントをご参考ください。

- [Azure OpenAI Service のクォータと制限 - Azure Cognitive Services | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/quotas-limits)

## Azure OpenAI StudioでGPT-4モデルを試す

### Azure OpenAI Studioを開く

まず、Azure OpenAI Studioを開きましょう。

- https://oai.azure.com/

※ 本来、Azure OpenAI Serviceを利用するには、Azureポータルなどからそのリソースをデプロイする必要があります。本ハンズオンでは、すでにデプロイ済みかつ会場の端末はAzureアカウントにサインイン済みなので、Azure OpenAI Studioを開いてすぐ利用できます。

### デプロイを確認する

次に、Azure OpenAI Serviceを利用するにはまず、モデルをデプロイする必要があります。

本ハンズオンでは、すでにデプロイを済ませてあるので、Azure OpenAI Studioの「デプロイ」画面を開き、以下のデプロイを確認しましょう。

| モデル名 | 説明 |
|----|----|
| `gpt-4-32k` | GPT-4のモデル。チャット（会話）ができる |
| `text-embedding-ada-002` | 後半の「Add your data」でベクトル検索を実装する際に利用する |

![Azure OpenAI Studioでデプロイを確認する](./images/aoai-studio/deployment-001.png)

### モデルを試す

それでは早速、プレイグラウンドでモデルを使ってみましょう。

まず、Azure OpenAI Studioで「チャット」画面を開きます。

ChatGPTのプレイグラウンドでは、「アシスタント セットアップ」「チャット セッション」「Configuration」のパネルがあります。

![](./images/aoai-studio/chat-playground-panels.png)

最初に、右端の「構成」の「デプロイ」の選択が、前述で確認したもの（`gpt-4-32k`）であることを確認してください。もし異なる場合は、選択し直してください。

それでは、「アシスタント セットアップ」で、セットアップを行いましょう。

「システム メッセージ」では、アシスタントの性格や、どんな振る舞いをさせるかや応答に含めてほしいコンテキストを指定します。まずは、「Use a system message template」のプルダウンから、「Empty Example」を選択してみましょう。

選択したら、「変更の保存」を選択して保存してください。「システム メッセージを更新しますか?」というポップアップが表示された場合、システム メッセージの更新によりチャット セッションでの会話の履歴が消去されることになる旨を確認されます。問題ない場合は、「続行」を選択して進めてください。

「チャット セッション」でアシスタントと会話をしてみましょう。「User message」から、以下のメッセージを順に送信してみてください。

さし障りのない応答が返ってきたかと思います。

![さし障りのない応答が返ってくる](./images/aoai-studio/chat-playground-empty-system-message-conversation-001.png)

### 演習

しばらく自由にアシスタントとチャットを試してみましょう。

- 前の会話も考慮された返答が得られます。試してみましょう。
  - 例: 「ラーメンの種類を教えて」「人気の種類は？」
- 「システム メッセージ」にこのチャットに役割や振る舞いを指定して、会話してみましょう。
  - 例: 「あなたは、数学について詳しいアシスタントです。」

## Add your dataを試す