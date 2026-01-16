-- Validando a discrepância de risco do grupo 41-60 anos em Moradia Gratuita
SELECT 
    faixa_etaria,
    tipo_moradia,
    COUNT(*) AS total_pedidos,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_default_perc
FROM tb_analise_final_credito
GROUP BY faixa_etaria, tipo_moradia
HAVING total_pedidos > 5 
ORDER BY taxa_default_perc DESC;

-- Investigando se o valor do empréstimo (Ticket Médio) influencia o default deste grupo
SELECT 
    faixa_etaria,
    tipo_moradia,
    COUNT(*) AS total_pedidos,
    ROUND(AVG(valor_credito), 2) AS ticket_medio_valor,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_default_perc
FROM tb_analise_final_credito
WHERE faixa_etaria = '41-60 anos'
GROUP BY tipo_moradia;

-- Analisando as finalidades de crédito dentro do grupo crítico (41-60 + Gratuita)
SELECT 
    categoria_finalidade,
    COUNT(*) AS qtd_pedidos,
    ROUND(AVG(valor_credito), 2) AS valor_medio_categoria,
    SUM(CASE WHEN status_credito = 0 THEN 1 ELSE 0 END) AS total_inadimplentes,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_risco_categoria
FROM tb_analise_final_credito
WHERE faixa_etaria = '41-60 anos' AND tipo_moradia = 'Gratuita'
GROUP BY categoria_finalidade
ORDER BY taxa_risco_categoria DESC;

-- Identificando os maiores empréstimos concedidos para este perfil que resultaram em default
SELECT 
    categoria_finalidade,
    valor_credito,
    desc_status_credito
FROM tb_analise_final_credito
WHERE faixa_etaria = '41-60 anos' 
  AND tipo_moradia = 'Gratuita' 
  AND status_credito = 0 
ORDER BY valor_credito DESC
LIMIT 5;