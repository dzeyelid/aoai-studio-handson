# Azure OpenAI Studioハンズオン

このリポジトリは、Azure OpenAI Studioを使って短時間でAzure OpenAIをキャッチアップできるセルフペースドハンズオンの資料です。

## Azure OpenAI Serviceとは

Azure OpenAI Serviceでは、OpenAIの強力な言語モデルをREST APIとして利用できます。

Azure OpenAIは、OpenAIに比べ、以下の点が特徴です。

- Azure OpenAIはAzureのセキュリティに準拠している
- リージョンの可用性が担保される
- 責任あるAIコンテンツのフィルターが利用できる
- Azure仮想ネットワークをはじめAzureサービスと接続できる

詳しくは、公式ドキュメントをご参照ください。

- [Azure OpenAI Service とは - Azure Cognitive Services | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/overview)

### 利用できるモデル（2023年6月時点）

| 種類 | モデル ファミリ | 説明 | モデルの例 |
|----|----|----|----|
| チャット（会話） | GPT-4 | GPT-3.5 を基に改善され、自然言語とコードを理解し、生成できるモデルのセット | `gpt-4-32k`, `gpt-4` |
| チャット（会話） | ChatGPT(GPT-3.5) | GPT-3 を基に改善され、自然言語とコードを理解し、生成できるモデルのセット | `gpt-35-turbo-16k`, `gpt-35-turbo`, `gpt-35-turbo-instruct` |
| 埋め込み | Embeddings | テキストを数値ベクトル形式に変換して、テキストの類似性を促進できるモデルのセット | `text-embedding-ada-002` |
| 画像生成 | DALL-E | 自然言語からオリジナルの画像を生成できるモデルのシリーズ（プレビュー） | 割愛 |
| 音声 | Whisper | 音声を文字起こしできるモデル（プレビュー） | 割愛 |

#### 備考: 旧モデル

現在（2023年11月）はモデルが一新されています。旧モデルについては下記ドキュメントをご参照ください。

- [Azure OpenAI Service レガシ モデル - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/ai-services/openai/concepts/legacy-models)

### APIの種類

主要なAPIは、以下の通りです。

| 種類 | API |
|----|----|
| 入力候補 | Completions |
| 埋め込み | Embeddings |
| チャット（会話） | Chat completions |
| チャット入力候補の拡張機能（独自データの利用など） | Completions extensions |
| 画像生成 | Image geenration |
| 音声の文字起こし | Speech to text |

詳しくは、公式ドキュメントをご参照ください。

- [Azure OpenAI Service の REST API リファレンス - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/reference)

## セルフペースド ハンズオン

Azure OpenAI Studioを学ぶためのセルフペースド ハンズオンを用意しています。

| シナリオ | 資料 |
|----|----|
| 基本 | [docs/self-paced-handson.md](./docs/self-paced-handson.md) |
| 独自データを利用する | [docs/add-your-data/self-paced-handson.md](./docs/add-your-data/self-paced-handson.md) |
