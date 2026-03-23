USE Desafio_Vendas_DB;

-- Alterao tipo da coluna preco_unitario para FLOAT
ALTER TABLE vendas_desafio
	ALTER COLUMN preco_unitario FLOAT;
GO

-- Adiciona a coluna faturamento
ALTER TABLE vendas_desafio
	ADD faturamento AS (quantidade * preco_unitario);
GO

/*
|------------------------------------------------------------
|------------------------- DESAFIOS -------------------------
|------------------------------------------------------------
*/

-- 1. Qual o faturamento total por produto?

SELECT
	produto,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	produto
ORDER BY
	faturamento_total DESC;


-- 2. Qual o faturamento total por categoria?

SELECT
	categoria,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	categoria
ORDER BY
	faturamento_total DESC;


-- 3. Qual o ticket médio por cliente?

SELECT
	cliente,
	ROUND((SUM(faturamento) / COUNT(id_venda)), 2) as ticket_medio
FROM
	vendas_desafio
GROUP BY
	cliente
ORDER BY
	ticket_medio DESC;


-- 4. Qual o faturamento total por vendedor?

SELECT
	vendedor,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	vendedor
ORDER BY
	faturamento_total DESC;


-- 5. Qual o faturamento por mês?

SELECT
	FORMAT(data_venda, 'yyyy/MM') AS ano_mes,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	FORMAT(data_venda, 'yyyy/MM')
ORDER BY
	ano_mes ASC;


-- 6. Quais são os 5 produtos mais vendidos?

SELECT TOP 5
	produto,
	SUM(quantidade) AS total_vendido
FROM
	vendas_desafio
GROUP BY
	produto
ORDER BY
	total_vendido DESC;

-- 7. Qual cidade possui maior faturamento?

SELECT TOP 1
	cidade,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	cidade
ORDER BY
	faturamento_total DESC;


-- 8. Qual cliente mais comprou em valor?

SELECT TOP 1
	cliente,
	SUM(faturamento) AS faturamento_total
FROM
	vendas_desafio
GROUP BY
	cliente
ORDER BY
	faturamento_total DESC;