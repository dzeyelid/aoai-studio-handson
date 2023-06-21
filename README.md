# Azure OpenAI Studioハンズオン

このリポジトリは、Azure OpenAI Studioを使って短時間でAzure OpenAIをキャッチアップできるセルフペースドハンズオンの資料です。

## Azure OpenAI Serviceとは

Azure OpenAI Serviceでは、OpenAIの強力な言語モデルをREST APIとして利用できます。

Azure OpenAIは、OpenAIに比べ、以下の点が特徴です。

- Azure OpenAIはAzureのセキュリティに準拠している
- リージョンの可用性が担保される
- 責任あるAIコンテンツのフィルターが利用できる
- Azure仮想ネットワークをはじめAzureサービスと接続できる

### 利用できるモデル（2023年6月時点）

| モデル | 説明 | モデル ファミリ |
|----|----|----|
| GPT-4 | GPT-3.5 を基に改善され、自然言語とコードを生成するだけでなく、理解できるモデルのセット | `gpt-4-32k`, `gpt-4` |
| ChatGPT(GPT-3.5) | 会話型インタフェース用に設計されたモデル | `gpt-35-turbo` |
| GPT-3 | 自然言語を理解し、生成できるモデルのシリーズ。これには、新しい ChatGPT(GPT-3.5) モデルが含まれます）| `text-davinci-003`, `text-curie-001`, `text-babbage-001`, `text-ada-001` |
| DALL-E | 自然言語からオリジナルの画像を生成できるモデルのシリーズ | |
| Codex | 自然言語のコードへの変換を含め、コードを理解し、生成できるモデルのシリーズ | `code-davinci-002`, `code-cushman-001` |
| Embeddings | embeddings（埋め込み）を理解し、使用できるモデルのセット。embeddingsとは、機会学習モデルとアルゴリズムにおいて簡単に利用できる特殊な形式のデータ表現を指す。 | 割愛 |

モデル ファミリは、`{capability}-{family}-{identifier}`という名前付け規則のもと定義されています。

| 要素 | 説明 |
|----|----|
| `capability` | モデルを指す。GPT-3なら`text`、Codexなら`code`、embeddingsなら`text-embedding`、`text-search`、`text-similarity`など |
| `family` | 相対ファミリを指す。`ada`, `baggage`, `curie`, `davinci`など、アルファベット順に世代が示され、後ろであるほど能力が高い |
| `identifier` | モデルのバージョン識別子 |

※ embeddingsの場合、`{capability}-{family}[-{input-type}]-{identifier}`という名前付け規則が適用されており、`input-type`は`doc`、`query`などが指定されます。

### APIの種類

Completion APIとChat completion API




詳しくは、公式ドキュメントをご参照ください。

- [Azure OpenAI Service とは - Azure Cognitive Services | Microsoft Learn](https://learn.microsoft.com/ja-jp/azure/cognitive-services/openai/overview)


## セルフペースド ハンズオン

セルフペースド ハンズオンは、[docs/self-paced-handson.md](./docs/self-paced-handson.md)にお進みください。
