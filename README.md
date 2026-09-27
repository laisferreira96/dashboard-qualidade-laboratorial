Dashboard de Qualidade Laboratorial

Projeto de portfólio de análise de dados aplicado à gestão da qualidade em laboratório clínico.

Sobre o projeto

Este projeto utiliza dados laboratoriais para gerar indicadores de qualidade por meio de SQL e SQLite.

A análise busca transformar dados operacionais em informações que permitam acompanhar não conformidades, identificar padrões e apoiar a gestão dos processos laboratoriais.

Objetivos
Analisar o volume de exames realizados;
Identificar e quantificar não conformidades;
Calcular a taxa de não conformidade;
Comparar indicadores entre os setores;
Identificar os principais tipos de não conformidade;
Aplicar análise de Pareto;
Acompanhar a evolução mensal dos indicadores;
Utilizar SQL para geração dos indicadores.
Tecnologias utilizadas
SQL
SQLite
Git
GitHub
Indicadores analisados

No período de janeiro a agosto de 2026:

5.000 exames analisados
176 não conformidades
3,52% de taxa geral de não conformidade
Principais resultados

A principal categoria de não conformidade identificada foi Amostra inadequada, com 76 ocorrências, correspondendo a 43,18% do total.

As três categorias com maior número de ocorrências foram:

Amostra inadequada — 43,18%
Volume insuficiente — 19,89%
Material não recebido — 18,75%

Em conjunto, essas categorias representaram 81,82% das não conformidades registradas no período.

A análise mensal apresentou variação na taxa de não conformidade, de 4,12% em janeiro para 3,11% em agosto.

Estrutura do projeto
dashboard-qualidade-laboratorial/
│
├── README.md
│
├── sql/
│   ├── 01_analise_setores.sql
│   ├── 02_nao_conformidades.sql
│   ├── 03_pareto.sql
│   └── 04_evolucao_mensal.sql
│
└── resultados/
    └── indicadores.md
Análises realizadas
Análise por setor

Cálculo do total de exames, número de não conformidades e taxa de não conformidade para cada setor do laboratório.

Análise das não conformidades

Identificação das ocorrências por setor e por tipo de não conformidade.

Análise de Pareto

Aplicação do princípio de Pareto para identificar as categorias que concentram a maior quantidade de ocorrências.

Evolução mensal

Acompanhamento da quantidade de exames, número de não conformidades e taxa mensal ao longo do período analisado.

Observação sobre os dados

Os dados disponibilizados neste projeto devem estar anonimizados e não conter informações pessoais ou identificáveis de pacientes.

Autora

Projeto desenvolvido para portfólio na área de Análise de Dados, com aplicação prática em Gestão da Qualidade Laboratorial.
