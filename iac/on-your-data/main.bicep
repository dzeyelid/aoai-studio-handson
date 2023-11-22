@description('リソースをデプロイするリージョンを指定します。リソースグループと同じロケーションを利用する場合は、デフォルトの文字列"[resourceGroup().location]"を指定してください。')
param location string = resourceGroup().location

@description('ストレージアカウントのSKUを選択してください')
@allowed(['Premium_LRS', 'Premium_ZRS', 'Standard_GRS', 'Standard_GZRS', 'Standard_LRS', 'Standard_RAGRS', 'Standard_RAGZRS', 'Standard_ZRS'])
param storageAccountSkuName string = 'Standard_LRS'

@description('チャットで利用するLLMモデルを選択してください')
@allowed(['gpt-4-32k','gpt-35-turbo-16k'])
param llmModelName string = 'gpt-35-turbo-16k'

var projectType = 'aoai-your-data-service'
var projectIdentifier = uniqueString(resourceGroup().id, projectType)

resource aoai 'Microsoft.CognitiveServices/accounts@2023-10-01-preview' = {
  name: 'aoai-${projectIdentifier}'
  location: location
  sku: {
    name: 'S0'
  }
  kind: 'OpenAI'

  resource text_embedding_ada_002 'deployments@2023-10-01-preview' = {
    name: 'text-embedding-ada-002'
    sku: {
      name: 'Standard'
      capacity: 50
    }
    properties: {
      model: {
        format: 'OpenAI'
        name: 'text-embedding-ada-002'
        version: '2'
      }
    }
  }
  
  resource gpt_4_32k 'deployments@2023-10-01-preview' = if (llmModelName == 'gpt-4-32k') {
    name: 'gpt-4-32k'
    sku: {
      name: 'Standard'
      capacity: 10
    }
    properties: {
      model: {
        format: 'OpenAI'
        name: 'gpt-4-32k'
        version: '0613'
      }
    }
    dependsOn: [
      text_embedding_ada_002
    ]
  }

  resource gpt_35_turbo_16k 'deployments@2023-10-01-preview' = if (llmModelName == 'gpt-35-turbo-16k') {
    name: 'gpt-35-turbo-16k'
    sku: {
      name: 'Standard'
      capacity: 10
    }
    properties: {
      model: {
        format: 'OpenAI'
        name: 'gpt-35-turbo-16k'
        version: '0613'
      }
    }
    dependsOn: [
      text_embedding_ada_002
    ]
  }
}

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'st${projectIdentifier}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: storageAccountSkuName
  }
  tags: {
    ProjectType: projectType
  }

  resource blob 'blobServices@2023-01-01' = {
    name: 'default'
    properties: {
      cors: {
        corsRules: [
          {
            allowedHeaders: [
              '*'
            ]
            allowedMethods: [
              'GET'
              'OPTIONS'
              'POST'
              'PUT'
            ]
            allowedOrigins: [
              '*'
            ]
            exposedHeaders: [
              '*'
            ]
            maxAgeInSeconds: 200
          }
        ]
      }
    }
  }
}

resource aiSearch 'Microsoft.Search/searchServices@2023-11-01' = {
  name: 'search-${projectIdentifier}'
  location: location
  sku: {
    name: 'basic'
  }
  tags: {
    ProjectType: projectType
  }
}
