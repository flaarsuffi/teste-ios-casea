## Objetivo

## Contexto
Seu aplicativo deve conter uma classe para delegar leituras de sensores

## Arquitetura

### Requisitos
- Deve simular recepção de sinais aleatórios em intervalos aleatórios
- Deve gerar um JSON para sair no log da aplicação a cada 15 minutos

### Especificações
- JSON enviado possui:
  - mobileID: identificação gerada do celular que a aplicação foi instalada
  - sensorID: identificação do sensor capturado (randomico)

### Formato para enviar
```
{
  "sensorID":"WER23131FFFF11",
  "mobileID:"323DDDDNJHTO234",
  "tracks": [
    { 
      "signalForce":0.23,
      "direction":0.531,
      "location": { "lat":-45.3232311, "lon":20.233111 }
    },
    { 
      "signalForce":0.51,
      "direction":0.211,
      "location": { "lat":-45.3232311, "lon":20.233111 }
    }
  ]
}
```
