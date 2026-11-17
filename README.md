# Sistema de Recomendação de Músicas com Neo4j

Projeto desenvolvido durante o Bootcamp da DIO em parceria com a Neo4j.

O objetivo foi criar um grafo com usuários, músicas, artistas e gêneros, usando conexões para recomendar músicas.

## Estrutura do grafo

Foram utilizados os relacionamentos:

- OUVIU
- CURTIU
- SEGUE
- CANTOU
- PERTENCE

As interações também receberam propriedades, como quantidade de reproduções e data.

![Grafo completo](imagens/grafo-completo.png)

## Recomendação

João e Ana curtiram **Blinding Lights**. Como Ana também curtiu **Levitating**, essa música pode ser recomendada para João.

![Recomendação para João](imagens/recomendacao-joao.png)

## Como executar

Execute os arquivos nesta ordem:

1. scripts/01_criacao_dados.cypher
2. scripts/02_propriedades_interacoes.cypher
3. scripts/03_consultas.cypher

## Dificuldades

Minha principal dificuldade foi entender as propriedades dos relacionamentos e como as conexões do grafo poderiam ser utilizadas para gerar uma recomendação.

## Tecnologias

- Neo4j
- Cypher