## ABOUT
This project is an Swagger-docs register of all APIs in the cross-architeture project. Swagger-fe has the function to present a documentation
of all routes of the APIs, their HTTP verbs and  inputs/outputs Payloads. This app can do too some tests and start a http request with custom payloads for the real application, in this way, starting all pipeline process.

## Gems

| Ressource | Version|
|:---|:---:|
| bootsnap | 1.4.4 |
| bunny ||
| dotenv-rails ||
| json ||
| jsonpath | ~1.1.2 |
| jbuilder ||
| pg ||
| puma | 5.0 |
| redis ||
| rest-client ||
| Ruby | 3.0.3 |
| Ruby on Rails | 7.0.3.1 |
| rubocop-rails ||


## Install project
### Install required gems

```
bundle install
```

### Setup Database
```
rails db:create
rails db:migrate
rails db:seed
```

### Start application:
```
rails server
```

# MS
## Translator

### Message received:

```json
{
   "pipeline":"Delete VM",
   "stage":"MS Delete Network",
   "payload":{
      "controlId":"cede7b6f-5249-4c18-a5f6-dd886683b702",
      "X-Application-Id":"1",
      "trocaNome":"valor1",
      "trocaNomeValor":"valor2",
      "cenarioTres":{
         "id":6,
         "nome":"João"
      },
      "cenarioQuatro":{
         "id":2,
         "produto":{
            "vps":{
               "id":8,
               "nome":"vpsLoca"
            }
         }
      },
      "id":89,
      "cenarioSeis":{
         "produto":{
            "preco":10,
            "fornecedor":{
               "nome":"RuanMarcas",
               "troca2":55
            },
            "caminhoPreco":{
               "id":1
            }
         }
      },
      "trocaNumero":"abc",
      "trocaLetra":123,
      "trocaBoolean":1234,
      "trocaDate":"abc"
   }
}
```

### Message sent:

```json
{
   "controlId":"cede7b6f-5249-4c18-a5f6-dd886683b702",
   "X-Application-Id":"1",
   "cenarioTres":{
      "nome":"João",
      "cenarioTres.idNovo":10
   },
   "cenarioQuatro":{
      "id":2,
      "produto":{
         "vps":{
            "nome":"vpsLoca",
            "idCenarioOk":16
         }
      }
   },
   "cenarioSeis":{
      "produto":{
         "preco":10,
         "fornecedor":{
            "FoiTrocadoMesmo":55,
            "nome":"RuanMarcasNew"
         },
         "caminhoPreco":{
            "id":1
         }
      }
   },
   "trocado":"valor1",
   "trocaDate":"2022-01-01",
   "trocaBoolean":true,
   "trocaLetra":"abcdefghijklmnopqrstuvxwyz",
   "trocaNumero":123456,
   "idCenario5Ok":16,
   "cenario2Ok":"valorcenario2Ok"
}
```
