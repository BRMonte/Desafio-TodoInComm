# Todo Desafio

Trata-se de um app para consultar dados de um giftcard.

## Features

- sistema de atutenticaçao que usa como referencia o giftcard, e nao o usuario
- service que consome API para listar as transaçōes associadas a um giftcard 
- calculo do balanço das transaçoes

## Tech

Dillinger uses a number of open source projects to work properly:

- Ruby on Rails
- gem 'devise': para autenticacao
- gem 'dotenv-rails': para configurar ambiente e guardar API key
- gem 'httparty': para consumo da API

## Installation

```sh
git clone git@github.com:BRMonte/Desafio-TodoInComm.git
cd Desafio-TodoInComm
bundle install
rails db:seeds
rails server
```

## Credenciais de teste

Giftcard number: 1234567891234567
password: 123456

## Objetivos alcancçados
- criar sistema de autenticaçao para acesso protegido ao sistema
- renderizar em tela os dados do giftcard
- fazer requisiçao a API para trazer infos externas ao giftcard
- fazer balanço das transaçoes

## Objetivos não alcançados
- criar testes unitarios para os API`s requests + metodo que faz balanço da conta
- fazer um layout mais sofisticado usando bootstrap
- usar Redis + Sidekiq para gerenciar a renderizacao de dados das transaçoes + gerenciar a periodicidade de requisicao por novos dados
