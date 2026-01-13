# 💳 Análise de Risco de Crédito - SQL & Python

Este projeto demonstra a construção de um pipeline de dados para análise financeira, utilizando o *German Credit Dataset*. O objetivo é transformar dados brutos em inteligência de negócio para mitigação de inadimplência.

## 🚀 Etapas do Projeto
- **Ingestão:** Script Python (`load_data.py`) para automação de carga do CSV para SQLite.
- **Tratamento:** Limpeza e tradução de variáveis técnicas para o português via SQL (`transform_data.sql`).
- **Análise Diagnóstica:** Identificação de padrões de risco utilizando queries avançadas.

## 📈 Insights Principais (Extraídos via SQL)
Através das consultas realizadas no VS Code, identifiquei indicadores críticos para a saúde financeira da instituição:

* **Taxa de Inadimplência Global:** 30.0%.
* **Fator Idade:** Jovens (18-24 anos) possuem risco de 41.3%, enquanto seniores (60+) apresentam apenas 22.2%.
* **Impacto da Moradia:** Clientes com casa própria reduzem o risco para 26%, validando a hipótese de estabilidade financeira.
* **Segmento Crítico:** Empréstimos para **Educação** apresentam a maior taxa de default (44%).

## 📂 Estrutura de Arquivos
- `/database`: Scripts de carga e banco de dados SQLite.
- `/sql`: Queries de análise exploratória e diagnóstica.