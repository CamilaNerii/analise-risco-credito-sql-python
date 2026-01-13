
SELECT COUNT(*) FROM credit_data_pt;

---Análise qualidade de dados----

PRAGMA table_info(german_credit_data);

PRAGMA table_info(credit_data_pt);

SELECT *
FROM german_credit_data
WHERE
  laufkont IS NULL OR
  laufzeit IS NULL OR
  moral IS NULL OR
  verw IS NULL OR
  hoehe IS NULL OR
  sparkont IS NULL OR
  beszeit IS NULL OR
  rate IS NULL OR
  famges IS NULL OR
  buerge IS NULL OR
  wohnzeit IS NULL OR
  verm IS NULL OR
  idade IS NULL OR
  weitkred IS NULL OR
  wohn IS NULL OR
  bishkred IS NULL OR
  beruf IS NULL OR
  pers IS NULL OR
  telef IS NULL OR
  gastarb IS NULL OR
  kredit IS NULL;


SELECT
  SUM(CASE WHEN laufkont IS NULL THEN 1 ELSE 0 END) AS laufkont_null,
  SUM(CASE WHEN laufzeit IS NULL THEN 1 ELSE 0 END) AS laufzeit_null,
  SUM(CASE WHEN moral IS NULL THEN 1 ELSE 0 END) AS moral_null,
  SUM(CASE WHEN verw IS NULL THEN 1 ELSE 0 END) AS verw_null,
  SUM(CASE WHEN hoehe IS NULL THEN 1 ELSE 0 END) AS hoehe_null,
  SUM(CASE WHEN sparkont IS NULL THEN 1 ELSE 0 END) AS sparkont_null,
  SUM(CASE WHEN beszeit IS NULL THEN 1 ELSE 0 END) AS beszeit_null,
  SUM(CASE WHEN rate IS NULL THEN 1 ELSE 0 END) AS rate_null,
  SUM(CASE WHEN famges IS NULL THEN 1 ELSE 0 END) AS famges_null,
  SUM(CASE WHEN buerge IS NULL THEN 1 ELSE 0 END) AS buerge_null,
  SUM(CASE WHEN wohnzeit IS NULL THEN 1 ELSE 0 END) AS wohnzeit_null,
  SUM(CASE WHEN verm IS NULL THEN 1 ELSE 0 END) AS verm_null,
  SUM(CASE WHEN idade IS NULL THEN 1 ELSE 0 END) AS idade_null,
  SUM(CASE WHEN weitkred IS NULL THEN 1 ELSE 0 END) AS weitkred_null,
  SUM(CASE WHEN wohn IS NULL THEN 1 ELSE 0 END) AS wohn_null,
  SUM(CASE WHEN bishkred IS NULL THEN 1 ELSE 0 END) AS bishkred_null,
  SUM(CASE WHEN beruf IS NULL THEN 1 ELSE 0 END) AS beruf_null,
  SUM(CASE WHEN pers IS NULL THEN 1 ELSE 0 END) AS pers_null,
  SUM(CASE WHEN telef IS NULL THEN 1 ELSE 0 END) AS telef_null,
  SUM(CASE WHEN gastarb IS NULL THEN 1 ELSE 0 END) AS gastarb_null,
  SUM(CASE WHEN kredit IS NULL THEN 1 ELSE 0 END) AS kredit_null
FROM german_credit_data;

PRAGMA table_info(credit_data_pt);

SELECT *
FROM credit_data_pt
WHERE
  historico_credito IS NULL OR
  finalidade IS NULL OR
  valor_credito IS NULL OR
  poupanca IS NULL OR
  tempo_emprego IS NULL OR
  percentual_renda IS NULL OR
  estado_civil IS NULL OR
  fiador IS NULL OR
  tempo_residencia IS NULL OR
  bens IS NULL OR
  idade IS NULL OR
  outros_creditos IS NULL OR
  moradia IS NULL OR
  creditos_anteriores IS NULL OR
  profissao IS NULL OR
  dependentes IS NULL OR
  telefone IS NULL OR
  estrangeiro IS NULL OR
  status_credito IS NULL;

SELECT
  SUM(CASE WHEN historico_credito IS NULL THEN 1 ELSE 0 END) AS historico_credito_null,
  SUM(CASE WHEN finalidade IS NULL THEN 1 ELSE 0 END) AS finalidade_null,
  SUM(CASE WHEN valor_credito IS NULL THEN 1 ELSE 0 END) AS valor_credito_null,
  SUM(CASE WHEN poupanca IS NULL THEN 1 ELSE 0 END) AS poupanca_null,
  SUM(CASE WHEN tempo_emprego IS NULL THEN 1 ELSE 0 END) AS tempo_emprego_null,
  SUM(CASE WHEN percentual_renda IS NULL THEN 1 ELSE 0 END) AS percentual_renda_null,
  SUM(CASE WHEN estado_civil IS NULL THEN 1 ELSE 0 END) AS estado_civil_null,
  SUM(CASE WHEN fiador IS NULL THEN 1 ELSE 0 END) AS fiador_null,
  SUM(CASE WHEN tempo_residencia IS NULL THEN 1 ELSE 0 END) AS tempo_residencia_null,
  SUM(CASE WHEN bens IS NULL THEN 1 ELSE 0 END) AS bens_null,
  SUM(CASE WHEN idade IS NULL THEN 1 ELSE 0 END) AS idade_null,
  SUM(CASE WHEN outros_creditos IS NULL THEN 1 ELSE 0 END) AS outros_creditos_null,
  SUM(CASE WHEN moradia IS NULL THEN 1 ELSE 0 END) AS moradia_null,
  SUM(CASE WHEN creditos_anteriores IS NULL THEN 1 ELSE 0 END) AS creditos_anteriores_null,
  SUM(CASE WHEN profissao IS NULL THEN 1 ELSE 0 END) AS profissao_null,
  SUM(CASE WHEN dependentes IS NULL THEN 1 ELSE 0 END) AS dependentes_null,
  SUM(CASE WHEN telefone IS NULL THEN 1 ELSE 0 END) AS telefone_null,
  SUM(CASE WHEN estrangeiro IS NULL THEN 1 ELSE 0 END) AS estrangeiro_null,
  SUM(CASE WHEN status_credito IS NULL THEN 1 ELSE 0 END) AS status_credito_null
FROM credit_data_pt;








