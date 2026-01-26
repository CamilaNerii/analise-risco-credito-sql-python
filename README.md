# 💳 Análise de Risco de Crédito | SQL, Power BI & Machine Learning

> **Status do Projeto:** ✅ Concluído

Este projeto apresenta uma solução completa ("End-to-End") para **subsidiar decisões de concessão de crédito**. A metodologia integra **SQL e Power BI** para o diagnóstico de carteira (KPIs e anomalias) e avança para **Python (Machine Learning)** com a construção de um modelo preditivo para identificar inadimplência.

🎥 [https://www.linkedin.com/feed/update/urn:li:activity:7419725523129409537/](#)

## 🚀 Evolução do Projeto (Ciclo SEMMA)

1.  **Ingestão de Dados:** Script em Python para automatizar a carga do dataset bruto em um banco SQLite.
2.  **Análise Diagnóstica (SQL & Power BI):** Validação de hipóteses e identificação de perfis de risco históricos.
3.  **Modelagem Preditiva (Python):** Treinamento de algoritmo de Machine Learning para calcular a probabilidade de default.

---

## 📊 Parte 1: Análise Descritiva & Diagnóstica
*Principais insights extraídos via SQL e Power BI:*

* **Taxa Global de Inadimplência:** 30,0%.
* **Segmento Crítico:** A categoria **Educação** registra o maior índice de risco (44,0%).
* **Anomalia Detectada:** Clientes entre 41-60 anos em "Moradia Gratuita" apresentaram taxa de default de **41,1%**. A causa raiz (investigada via SQL) foi a aprovação de Ticket Médio 85% superior para compra de veículos novos sem colateral (garantia).

---

## 🤖 Parte 2: Modelagem Preditiva
*Utilizando Python e Scikit-learn, desenvolvi um classificador Random Forest focado em mitigar a exposição ao risco.*

### 🎯 O Desafio de Negócio
Em crédito, o erro mais oneroso não é negar um bom cliente (Custo de Oportunidade), mas aprovar um cliente que entrará em default (Perda Financeira Direta). Por isso, o modelo foi otimizado para maximizar o **Recall da classe de Inadimplentes**.

### 📈 Resultados do Modelo (Random Forest)
Após balanceamento de classes e tuning de hiperparâmetros (limitando a profundidade para evitar overfitting):

* **Recall (Eficiência na detecção de Risco):** **64%**
    * *Interpretação:* De cada 100 casos reais de inadimplência, o modelo identifica corretamente 64, prevenindo a concessão do crédito.
* **Feature Importance (Insight do Modelo):**
    * Diferente da análise diagnóstica inicial, que focava em Idade/Moradia, o modelo revelou que o **Valor do Crédito** e a **Duração do Empréstimo** são os preditores matemáticos mais fortes de risco.

### Matriz de Confusão
*(O modelo prioriza a segurança: alta detecção de maus pagadores, aceitando um trade-off controlado de falsos positivos)*

![Matriz de Confusão](matriz_da_confusao.png)

---

## 🛠 Stack Tecnológica

* **Python:** Pandas, Scikit-learn, Matplotlib/Seaborn (Machine Learning e ETL).
* **SQL (SQLite):** Engenharia de dados e validação de hipóteses.
* **Power BI:** Dashboard interativo para monitoramento de KPIs.

## 📂 Estrutura do Repositório

* `/data`: Base de dados original.
* `/sql`: Consultas de tratamento e análise diagnóstica.
* `/notebooks`: Jupyter Notebooks com a Análise Exploratória e o Modelo de ML.
* `/dashboard`: Arquivo `.pbix` do Power BI.

---
**Desenvolvido por:** Camila Neri