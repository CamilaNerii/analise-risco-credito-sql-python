# 💳 Análise de Risco de Crédito | SQL, Power BI & Machine Learning

> **Status do Projeto:** ✅ Concluído

![Dashboard Power BI](preview.png)
*(Visão geral do painel de monitoramento de risco desenvolvido no Power BI)*

---

## 📋 Sobre o Projeto

Este projeto apresenta uma solução completa ("End-to-End") para **subsidiar decisões de concessão de crédito**. A metodologia integra **SQL e Power BI** para o diagnóstico de carteira (KPIs e anomalias) e avança para **Python (Machine Learning)** com a construção de um modelo preditivo para identificar inadimplência.

### 🔗 Links Rápidos
* 🎥 **[Demonstração em Vídeo (LinkedIn)](https://www.linkedin.com/feed/update/urn:li:activity:7419725523129409537/)**: Veja a interatividade da parte diagnóstica do projeto.

---

## 🚀 Evolução do Projeto (Ciclo SEMMA)

O projeto seguiu uma esteira de desenvolvimento estruturada em três pilares:

1.  **Ingestão & Engenharia (Python/SQL):** Automação da carga do dataset bruto e estruturação em banco de dados SQLite.
2.  **Análise Diagnóstica (SQL/Power BI):** Exploração de dados para validação de hipóteses e identificação de perfis de risco históricos.
3.  **Modelagem Preditiva (Python/Scikit-learn):** Treinamento de algoritmos de Machine Learning para calcular a probabilidade de default em novos clientes.

---

## 📊 Parte 1: Insights do Diagnóstico
*Principais descobertas extraídas via SQL e visualizadas no Power BI:*

* **Taxa Global de Inadimplência:** A carteira analisada apresenta uma taxa média de **30,0%**.
* **Segmento Crítico:** A categoria de finalidade **Educação** registra o maior índice de risco (44,0%).
* **Anomalia de Negócio Detectada:**
    * Clientes entre 41-60 anos em "Moradia Gratuita" apresentaram taxa de default de **41,1%**.
    * **Causa Raiz:** Investigação via SQL revelou a aprovação de um Ticket Médio 85% superior para este grupo na compra de veículos novos, sem garantia (colateral).

---

## 🤖 Parte 2: Modelagem Preditiva

*Utilizando Python, desenvolvi um classificador Random Forest focado em mitigar a exposição financeira ao risco.*

### 🎯 O Desafio de Negócio
Em crédito, o erro mais oneroso não é negar um bom cliente (Custo de Oportunidade), mas aprovar um cliente que entrará em default (Perda Financeira Direta). Por isso, o modelo foi otimizado para maximizar o **Recall da classe de Inadimplentes**.

### 📈 Resultados do Modelo (Random Forest)

* **Recall (Eficiência na detecção de Risco): 64%**
    * *Interpretação:* De cada 100 casos reais de inadimplência, o modelo identifica corretamente 64, prevenindo a concessão do crédito.

* **Feature Importance (Insight do Modelo):**
    * O modelo revelou que o **Valor do Crédito** e a **Duração do Empréstimo** são os preditores matemáticos mais fortes de risco, superando variáveis demográficas iniciais.

### Matriz de Confusão
*(Visualização da performance do modelo na identificação de riscos)*

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
* `/dashboard`: Arquivo `.pbix` do Power BI e imagens.

---
**Desenvolvido por:** Camila Neri