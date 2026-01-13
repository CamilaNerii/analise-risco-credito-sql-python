-- Taxa global de inadimplência--

SELECT 
    COUNT(*) AS total_clientes,
    SUM(valor_credito) AS volume_total_carteira,
    SUM(CASE WHEN status_credito = 0 THEN 1 ELSE 0 END) AS total_inadimplentes,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_inadimplencia_global
FROM credit_data_pt;

--Taxa ficou em torno de 30%---

--1. Análise da Inadimplência por Finalidade--

SELECT 
    CASE 
        WHEN finalidade = '0' THEN 'Carro Novo'
        WHEN finalidade = '1' THEN 'Carro Usado'
        WHEN finalidade = '2' THEN 'Móveis/Equipamentos'
        WHEN finalidade = '3' THEN 'Rádio/Televisão'
        WHEN finalidade = '4' THEN 'Eletrodomésticos'
        WHEN finalidade = '5' THEN 'Reparos'
        WHEN finalidade = '6' THEN 'Educação'
        WHEN finalidade = '9' THEN 'Negócios'
        ELSE 'Outros'
    END AS categoria_finalidade,
    COUNT(*) AS total_clientes,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_inadimplencia_perc
FROM credit_data_pt
GROUP BY categoria_finalidade
ORDER BY taxa_inadimplencia_perc DESC;

--2. Hipótese estratégica sobre estabilidade residencial--

SELECT 
    CASE 
        WHEN moradia = '1' THEN 'Alugada'
        WHEN moradia = '2' THEN 'Própria'
        WHEN moradia = '3' THEN 'Gratuita'
    END AS tipo_moradia,
    COUNT(*) AS total_clientes,
    SUM(valor_credito) AS volume_financeiro,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_inadimplencia_perc
FROM credit_data_pt
GROUP BY tipo_moradia
ORDER BY taxa_inadimplencia_perc DESC;

--3. Verificando se a idade teria influências significativas nas análises---

SELECT 
    CASE 
        WHEN idade < 25 THEN '18-24 anos (Jovem)'
        WHEN idade BETWEEN 25 AND 40 THEN '25-40 anos (Adulto Jovem)'
        WHEN idade BETWEEN 41 AND 60 THEN '41-60 anos (Adulto)'
        ELSE '60+ anos (Sênior)' 
    END AS faixa_etaria,
    COUNT(*) AS total_clientes,
    SUM(valor_credito) AS volume_financeiro,
    ROUND(AVG(CASE WHEN status_credito = 0 THEN 1.0 ELSE 0.0 END) * 100, 2) AS taxa_inadimplencia_perc
FROM credit_data_pt
GROUP BY faixa_etaria
ORDER BY taxa_inadimplencia_perc DESC;

SELECT * FROM tb_analise_final_credito LIMIT 10;