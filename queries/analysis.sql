-- 01. Cliente que mais gerou faturamento

SELECT nome, SUM(valor_total)
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY SUM(valor_total) DESC
LIMIT 3;

-- 02. Cliente que mais comprou

SELECT COUNT(*), nome
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY COUNT(*) DESC
LIMIT 3;

-- 03. Calcular ticket médio por cliente

SELECT AVG(valor_total), nome
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY AVG(valor_total) DESC
LIMIT 3;

-- 04. Identificar clientes recorrentes

SELECT COUNT(*), nome
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 05. Análise dos clientes recorrentes

SELECT nome, COUNT(*), SUM(valor_total)
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- 06. Quais clientes tem mais valor para o negócio

SELECT nome, COUNT(*), SUM(valor_total)
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY SUM(valor_total) DESC;

-- 07.  TOP 10 clientes.

SELECT nome, COUNT(*), SUM(valor_total)
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY SUM(valor_total) DESC
LIMIT 10;

-- 08. Clientes que fizeram 5 compras e gastaram mais de R$ 5.000 no total.

SELECT nome, COUNT(*), SUM(valor_total)
FROM clientes
JOIN pedidos
ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
HAVING COUNT(*) > 5 AND SUM(valor_total) > 5000
ORDER BY SUM(valor_total) DESC;