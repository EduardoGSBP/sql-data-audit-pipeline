# SQL Data Audit Pipeline

Projeto **orientado a práticas reais de mercado**, focado em **auditoria, validação, limpeza e manipulação segura de dados** utilizando SQL.

Este repositório não tem como objetivo apenas demonstrar comandos SQL isolados, mas sim **mostrar raciocínio profissional**, organização e cuidado ao trabalhar com dados sensíveis — especialmente ao executar operações destrutivas como `UPDATE` e `DELETE`.

---

## 🎯 Objetivo do Projeto

Simular um **pipeline de auditoria e higienização de dados de vendas**, demonstrando como:

* Validar dados usando **tabelas temporárias**
* Identificar registros suspeitos ou inconsistentes
* Criar **tabelas espelho (backup)** antes de qualquer alteração crítica
* Aplicar alterações de estrutura de forma controlada
* Executar `UPDATE` básicos, intermediários e avançados
* Realizar `DELETE` com critérios claros e seguros
* Trabalhar com lógica baseada em datas (DateDiff)

Tudo isso seguindo **boas práticas usadas em ambientes profissionais**, não apenas exemplos acadêmicos.

---

## 🧠 Por que este projeto é relevante?

Na prática, perdas de dados quase nunca acontecem por queries complexas, mas sim por **queries simples executadas sem validação prévia**.

Este projeto demonstra:

* Por que **não se deve atualizar dados diretamente** sem testes
* Como tabelas temporárias funcionam como uma **camada de segurança**
* A importância de backups antes de `UPDATE` e `DELETE`
* Como organizar scripts SQL de forma clara, revisável e reutilizável

---

## 🗂 Estrutura do Repositório

```text
sql-data-audit-pipeline/
│
├── README.md
├── schema/
│   └── 01_create_sales_table.sql
│
├── temp_tables/
│   ├── 02_temp_tables_validation.sql
│   └── 03_advanced_temp_tables.sql
│
├── backup/
│   ├── 04_simple_backup_table.sql
│   └── 05_full_mirror_table.sql
│
├── alter_update/
│   ├── 06_alter_table_add_column.sql
│   ├── 07_basic_update.sql
│   ├── 08_update_with_conditions.sql
│   └── 09_advanced_update_with_dates.sql
│
├── delete/
│   ├── 10_basic_delete.sql
│   ├── 11_delete_with_criteria.sql
│   └── 12_advanced_delete_datediff.sql
│
└── docs/
    └── project_flow.md
```

---

## 🧱 Modelo de Dados

O projeto parte de uma tabela simples de vendas, contendo:

* `id_sale` – Identificador único da venda
* `customer` – Nome do cliente
* `product` – Produto vendido
* `sale_date` – Data da venda
* `amount` – Valor da venda
* `status` – Status da transação

A simplicidade do modelo é proposital, permitindo foco total no **processo, lógica e boas práticas**, e não em complexidade de schema.

---

## 🔍 Visão Geral do Fluxo

1. Criação da tabela base
2. Geração de tabelas temporárias para validação
3. Teste de regras de negócio sem afetar dados reais
4. Criação de backups e tabelas espelho
5. Alterações de estrutura controladas (`ALTER TABLE`)
6. Atualizações progressivas (`UPDATE` básico ao avançado)
7. Remoção de dados apenas após validação completa (`DELETE`)

Os scripts são numerados para garantir execução na ordem correta.

---

## 🧪 Conceitos de SQL Aplicados

* Tabelas temporárias (local e uso avançado)
* Criação de tabelas espelho (backup)
* ALTER TABLE e adição de colunas
* UPDATE com regras simples e complexas
* DELETE com múltiplos critérios
* Operações baseadas em datas (DateDiff)
* Organização e versionamento de scripts SQL

---

## 🚀 Como Utilizar

1. Execute os scripts seguindo a ordem numérica
2. Analise os dados nas tabelas temporárias antes de atualizar
3. Utilize os backups como camada de segurança
4. Nunca execute `DELETE` sem validar o impacto da query

Este projeto pode ser usado para:

* Estudo avançado de SQL
* Portfólio profissional
* Simulação de ambiente produtivo
* Base para integração com Python ou outras ferramentas

---

## 🛠 Tecnologias Utilizadas

* SQL (compatível com PostgreSQL)
* Conceitos aplicáveis a MySQL e SQL Server

---

## 📌 Próximos Passos (Evoluções Possíveis)

* Criação de views para relatórios
* Procedures e functions
* Integração com Python (Pandas)
* Automação do pipeline
* Simulação de ambiente de produção

---

Este repositório reflete **raciocínio crítico, cuidado com dados e mentalidade profissional**, indo além do simples uso de comandos SQL.

