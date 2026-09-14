# Customer Insights SQL

Mini projeto de portfólio focado em **análise comercial com SQL e SQLite**.

O cenário simula uma empresa que precisa entender melhor o comportamento de seus clientes e pedidos. O objetivo é responder demandas de negócio usando consultas SQL em um banco relacional com duas tabelas.

## Objetivo

Praticar, em contexto realista:

- `SELECT`
- `WHERE`
- `AND` / `OR`
- `LIKE` / `NOT LIKE`
- `IN`
- `BETWEEN`
- `ORDER BY`
- `LIMIT`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `GROUP BY`
- `HAVING`
- `INNER JOIN`
- `LEFT JOIN`

## Estrutura

```text
customer-insights-sql/
├── README.md
├── database/
│   └── company_sales.db
├── queries/
│   └── analysis.sql
└── docs/
    ├── business_requests.md
    └── database_structure.md
```

## Como usar

1. Abra a pasta no VSCode.
2. Conecte ao arquivo `database/company_sales.db`.
3. Leia `docs/business_requests.md`.
4. Resolva tudo em `queries/analysis.sql`.
5. Não procure “qual comando usar” antes de interpretar a demanda.
6. Ao terminar, atualize este README com um resumo das análises e conclusões.

## Status

**Em desenvolvimento.**

Este projeto representa o estágio atual de aprendizado em SQL: consultas, filtros, agregações e relacionamento entre duas tabelas.


## Principais insights

### Top 3 clientes por faturamento total
1. Thiago Lima — R$ 11.420,59
2. Sofia Souza — R$ 11.282,49
3. Kaua Souza — R$ 10.117,68

### Top 3 clientes por quantidade de pedidos
1. 	Sofia Souza — 17 Pedidos
2.  Caio Nunes — 16 Pedidos
3.  Vitoria Araujo — 15 Pedidos

### Top 3 clientes com o maior ticket medio
1.  Arthur Nunes — R$ 2.349,94
2.  Gustavo Lima — R$ 2.137,05
3.  Fernanda Oliveira — R$ 1.862,54

### Clientes recorrentes
1.  Sofia Souza — 17
2.  Caio Nunes —  16
3.  Vitoria Araujo — 15 
4.  Yasmin Pereira — 12
5.  Pedro Lima — 10

### 05. Análise de clientes recorrentes
Foi criada uma consulta para identificar clientes que realizaram mais de uma compra.

A análise exibe:
- Nome do cliente
- Quantidade de pedidos realizados
- Valor total gasto pelo cliente

Foi utilizado `GROUP BY` para agrupar os pedidos por cliente, `COUNT()` para contar as compras, `SUM()` para calcular o total gasto e `HAVING` para filtrar apenas clientes recorrentes.

### 06. Clientes com maior valor para o negócio

Foi realizada uma análise para identificar quais clientes geram mais receita para a empresa.

A consulta apresenta:
- Nome do cliente
- Quantidade de compras realizadas
- Valor total gasto

Os resultados são ordenados do maior para o menor valor gasto, permitindo identificar os clientes mais valiosos para o negócio.

### 07. Top 10 clientes por receita

Foi realizada uma análise para identificar os 10 clientes que mais geraram receita para a empresa.

A consulta apresenta:
- Nome do cliente
- Quantidade de compras realizadas
- Valor total gasto

Os resultados são ordenados pelo valor total gasto, do maior para o menor, e limitados aos 10 clientes com maior receita gerada.

### 08. Identificação de clientes VIP

Foi realizada uma análise para identificar clientes com maior potencial para ações de fidelização.

Foram considerados clientes que:
- Realizaram mais de 5 compras
- Gastaram mais de R$ 5.000 no total

A consulta apresenta o nome do cliente, a quantidade de compras realizadas e o valor total gasto, ordenando os resultados do maior para o menor valor gasto.