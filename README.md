Projeto SQL – Auditoria e Limpeza de Dados de Vendas

Este projeto demonstra, de forma profissional e prática, o uso de tabelas temporárias, tabelas espelho (backup), ALTER TABLE, UPDATE, DELETE e critérios avançados com datas, simulando um cenário real de auditoria e higienização de dados em banco de dados relacional.

O foco não é apenas executar comandos SQL, mas reduzir riscos, validar dados antes de alterações destrutivas e aplicar boas práticas utilizadas em ambientes corporativos.

🎯 Objetivo do Projeto

Criar um fluxo completo em SQL que:

Analise dados de vendas

Utilize tabelas temporárias para validação

Crie backups seguros (tabelas espelho)

Adicione colunas calculadas

Atualize registros com regras claras

Remova dados inválidos ou obsoletos

Tudo isso sem modificar diretamente os dados críticos no início do processo.

🗂️ Estrutura do Repositório
sql-projeto-auditoria/
│
├── README.md
├── schema/
│ └── 01_criacao_tabela_vendas.sql
│
├── temp_tables/
│ ├── 02_tabelas_temporarias.sql
│ └── 03_uso_avancado_temp_tables.sql
│
├── backup/
│ ├── 04_tabela_backup_simples.sql
│ └── 05_tabela_espelho_completa.sql
│
├── alter_update/
│ ├── 06_alter_table_nova_coluna.sql
│ ├── 07_update_basico.sql
│ ├── 08_update_com_criterios.sql
│ └── 09_update_avancado.sql
│
├── delete/
│ ├── 10_delete_basico.sql
│ ├── 11_delete_com_criterios.sql
│ └── 12_delete_avancado_datediff.sql
│
└── docs/
└── fluxo_do_projeto.md
