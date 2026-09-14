# Estrutura do banco

## `clientes`

| Coluna | Descrição |
|---|---|
| `id` | Identificador único do cliente |
| `nome` | Nome completo |
| `email` | E-mail |
| `cidade` | Cidade |
| `estado` | Estado |
| `data_cadastro` | Data de cadastro |

## `pedidos`

| Coluna | Descrição |
|---|---|
| `id` | Identificador único do pedido |
| `cliente_id` | Cliente responsável pelo pedido |
| `data_pedido` | Data do pedido |
| `valor_total` | Valor total |
| `status` | Situação do pedido |

## Relação

Cada pedido pertence a um cliente.

> Nem todo cliente possui pedido registrado.
