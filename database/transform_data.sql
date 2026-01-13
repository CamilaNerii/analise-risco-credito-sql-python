CREATE TABLE credit_data_pt AS
SELECT
    laufkont   AS conta_corrente,
    laufzeit   AS duracao_meses,
    moral      AS historico_credito,
    verw       AS finalidade,
    hoehe      AS valor_credito,
    sparkont   AS poupanca,
    beszeit    AS tempo_emprego,
    rate       AS percentual_renda,
    famges     AS estado_civil,
    buerge     AS fiador,
    wohnzeit   AS tempo_residencia,
    verm       AS bens,
    idade      AS idade,
    weitkred   AS outros_creditos,
    wohn       AS moradia,
    bishkred   AS creditos_anteriores,
    beruf      AS profissao,
    pers       AS dependentes,
    telef      AS telefone,
    gastarb    AS estrangeiro,
    kredit     AS status_credito
FROM german_credit_data;
