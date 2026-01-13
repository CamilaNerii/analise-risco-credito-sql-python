CREATE TABLE tb_analise_final_credito AS
SELECT 
    status_credito,
    valor_credito,
    idade,
    CASE 
        WHEN idade < 25 THEN '18-24 anos'
        WHEN idade BETWEEN 25 AND 40 THEN '25-40 anos'
        WHEN idade BETWEEN 41 AND 60 THEN '41-60 anos'
        ELSE '60+ anos' 
    END AS faixa_etaria,
    CASE 
        WHEN moradia = '1' THEN 'Alugada'
        WHEN moradia = '2' THEN 'Própria'
        WHEN moradia = '3' THEN 'Gratuita'
    END AS tipo_moradia,
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
    END AS categoria_finalidade
FROM credit_data_pt;

