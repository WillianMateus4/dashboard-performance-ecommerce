# Desafio de Dados: E-commerce 

![Microsoft SQL Server](https://img.shields.io/badge/Microsoft_SQL_Server-CC2927?style=flat-square&logo=microsoft-sql-server&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_Bi-F2C811?style=flat-square&logo=codeforces&logoColor=black)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=flat-square&logo=figma&logoColor=white)
![Concluído](https://img.shields.io/badge/Status-Concluído-28a745?style=flat-square)

Projeto para a **Comunidade ComuniDados**, proposto por [Walter Gonzaga](https://www.youtube.com/@gonzagadosdados). A partir de uma base bruta de e-commerce, foram conduzidas etapas de **ETL**, **análise exploratória** e construção de um **dashboard interativo** com foco em performance de vendas e comportamento do cliente.

> 🚀 **Acesso Rápido:** [Clique aqui para acessar o Dashboard Interativo](https://app.powerbi.com/view?r=eyJrIjoiZTM2OWYzMmYtYjMzYS00MWE4LWI4YTctYzE4ZTUxZmE2YTRmIiwidCI6IjI3ODJkNTJlLWQ0ZTMtNDgzZC05OTk1LThiZDljY2UyZTM2NCJ9&pageName=68807104d624c9d57ca2)

## 🖥️ Visão Geral do Pipeline

```
Base Bruta → Limpeza e Análise Exploratória (SQL + Python) → Modelagem (Power BI) → Dashboard
```

O projeto foi dividido em duas frentes complementares que simulam um pipeline de dados de ponta a ponta.

---

### ⚙️ 1 · Engenharia e Qualidade de Dados (SQL + Python)

O primeiro passo foi garantir a confiabilidade dos dados, assegurando que o banco refletisse a realidade do negócio sem distorções que pudessem prejudicar a tomada de decisão.

**Problemas identificados e corrigidos:**
* Correção de divergências geográficas entre cidades e estados.
* Conversão e tipagem incorreta da coluna `preco_unitario` (ajustado para float).
* Criação da métrica de `faturamento` (coluna calculada a partir de `quantidade` e `preço_unitario`).

**Análise exploratória inicial:**
* Desenvolvimento de consultas **SQL** para identificação rápida de ofensores e destaques do negócio (top n produtos, principais vendedores e clientes de alto valor).
* Geração de visualizações em **Python (Matplotlib)** para validação de hipóteses antes da modelagem final.

---

### 📊 2 · Inteligência de Negócio e Dashboard (Power BI)

O dashboard foi desenhado com foco em **autonomia do usuário**, guiando a estratégia de negócio através de três visões principais:

| Aba | Nome | Foco |
| :---: | :--- | :--- |
| 1 | **Visão Geral** | KPIs estratégicos, análise de desempenho por categoria de produto e tendências. |
| 2 | **Performance** | Eficiência de vendas: Aplicação da Curva de Pareto (80/20) para identificar os produtos que mais geram resultado. |
| 3 | **Clientes** | CRM e Retenção: Matriz de Valor, oportunidades de cross-selling e monitoramento de recência |
| Extra | **Dica de Ferramenta (Tooltip)** | Detalhamento dinâmico nos gráficos de colunas, exibindo o comparativo entre o mês atual e o anterior com análise de variação (*MoM - Month-over-Month*). |

---
<br>

**Destaques técnicos:**
* **Parâmetros Dinâmicos:** Alternância de eixos nos gráficos (Faturamento, Volume, Ticket Médio, etc.) sem a necessidade de criar novas abas, otimizando o espaço.
* **Inteligência de Tempo e Recência (DAX):** Criação de métricas para mapeamento do perfil do cliente, incluindo data da última compra, dias inativos (tempo sem comprar), além da identificação das categorias favorita e menos favorita.
* **Análise de Pareto (80/20):** Implementação de gráfico de Pareto dinâmico para avaliar a concentração de resultados sob a ótica de múltiplos indicadores, permitindo identificar os 20% de produtos que geram 80% do impacto no negócio.
* **Design e UI/UX:** Criação do layout base no Figma aliado ao uso de botões interativos do Power BI, mantendo o foco na usabilidade e experiência do usuário.

## 📖 Dicionário de Dados

| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `id_venda` | `INT` | Identificador único da transação (Primary Key) |
| `data_venda` | `DATE` | Data em que a venda foi realizada |
| `cliente` | `NVARCHAR` | Nome do ciente |
| `produto` | `NVARCHAR` | Nome do produto |
| `categoria` | `NVARCHAR` | Categoria do produto (ex: Móveis, Eletrônicos) |
| `quantidade` | `INT` | Quantidade de itens comprados no pedido |
| `preco_unitario` | `FLOAT` | Valor unitário do produto na data da compra |
| `vendedor` | `NVARCHAR` | Nome do vendedor responsável |
| `cidade` / `estado` | `NVARCHAR` | Localização geográfica |
| `faturamento` | `FLOAT` | Métrica calculada: `quantidade × preco_unitario` |

## 🗂️ Estrutura do Repositório

```
📦 desafio_ecommerce
 ├── 📁 consulta/           # Script SQL com análises exploratórias, correções e agregações
 ├── 📁 dados/              # Base de dados original
 ├── 📁 dados/resumo/       # Arquivo CSV gerado via Python com o resumo consolidado de vendas
 ├── 📁 dashboard/          # Arquivo .pbix contendo a modelagem e o dashboard final
 ├── 📁 docs/               # Material de apoio e instruções do desafio
 ├── 📁 notebook/           # Jupyter Notebooks com scripts de ETL e análise (Python)
 └── 📁 ux/                 # Backgrounds do dashboard desenvolvidos no Figma

```

## 🛠️ Ferramentas e Tecnologias

| Nome | Uso no Projeto |
| :--- | :--- |
| **SQL Server** | Exploração da base, correção de anomalias, agregações analíticas. |
| **Python** · Pandas, Matplotlib | ETL, higienização dos dados e geração de gráficos exploratórios. |
| **Power BI** · DAX | Modelagem, inteligência de tempo, parâmetros dinâmicos. |
| **Figma** | Design de interface e prototipação de UX. |


## 👤 Autor

**Willian Mateus** | *Data Analyst & Business Intelligence*

ℹ️ Para saber mais sobre mim, ver meus outros projetos ou entrar em contato, visite meu [Perfil do GitHub](https://github.com/WillianMateus4).