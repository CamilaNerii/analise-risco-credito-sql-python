DROP TABLE IF EXISTS tb_analise_final_credito;

CREATE TABLE tb_analise_final_credito AS
SELECT 
    CASE 
        WHEN "kredit" = 1 THEN 'Bom'
        WHEN "kredit" = 0 THEN 'Ruim'
    END AS desc_status_credito,
    "kredit" AS status_credito, 
    "hoehe" AS valor_credito,
    "idade",
    CASE 
        WHEN "idade" < 25 THEN '18-24 anos'
        WHEN "idade" BETWEEN 25 AND 40 THEN '25-40 anos'
        WHEN "idade" BETWEEN 41 AND 60 THEN '41-60 anos'
        ELSE '60+ anos' 
    END AS faixa_etaria,
    CASE 
        WHEN CAST("wohn" AS INT) = 1 THEN 'Alugada'
        WHEN CAST("wohn" AS INT) = 2 THEN 'Própria'
        WHEN CAST("wohn" AS INT) = 3 THEN 'Gratuita'
        ELSE 'Outros'
    END AS tipo_moradia,
    CASE 
        WHEN CAST("verw" AS TEXT) = '0' THEN 'Carro Novo'
        WHEN CAST("verw" AS TEXT) = '1' THEN 'Carro Usado'
        WHEN CAST("verw" AS TEXT) = '2' THEN 'Móveis/Equipamentos'
        WHEN CAST("verw" AS TEXT) = '3' THEN 'Rádio/Televisão'
        WHEN CAST("verw" AS TEXT) = '4' THEN 'Eletrodomésticos'
        WHEN CAST("verw" AS TEXT) = '5' THEN 'Reparos'
        WHEN CAST("verw" AS TEXT) = '6' THEN 'Educação'
        WHEN CAST("verw" AS TEXT) = '9' THEN 'Negócios'
        ELSE 'Outros'
    END AS categoria_finalidade
FROM german_credit_data;

