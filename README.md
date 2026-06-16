ecommerce-platform/
│
├── README.md
│
├── databricks/
│   │
│   ├── 01_setup/
│   │   ├── create_catalog.sql
│   │   ├── create_schemas.sql
│   │   ├── create_volume.sql
│   │   ├── create_silver_tables.sql
│   │   ├── create_reject_tables.sql
│   │   └── create_audit_table.sql
│   │
│   ├── 02_autoloader/
│   │   ├── customers_autoloader.py
│   │   ├── orders_autoloader.py
│   │   ├── products_autoloader.py
│   │   └── payments_autoloader.py
│   │
│   ├── 03_validation/
│   │   └── great_expectations.py
│   │
│   ├── 04_merge/
│   │   ├── merge_customers.sql
│   │   ├── merge_orders.sql
│   │   ├── merge_products.sql
│   │   └── merge_payments.sql
│   │
│   ├── 05_PySpark-Gold_Transformations/
│   │   ├── customer_revenue.py
│   │   ├── daily_revenue.py
│   │   └── product_sales.py
│   │
│   └── 06_snowflake_load/
│       └── load_to_snowflake.py
│
├── snowflake/
│   ├── create_database.sql
│   ├── create_schema.sql
│   ├── create_stream.sql
│   └── create_task.sql
│
├── airflow/
│   └── dags/
│       └── ecommerce_pipeline_dag.py
│
├── azure-devops/
│   └── azure-pipelines.yml
│
└── dbt/
    └── ecommerce_dbt/
        │
        ├── dbt_project.yml
        │
        ├── models/
        │   │
        │   ├── sources.yml
        │   │
        │   ├── staging/
        │   │   ├── stg_customer_revenue.sql
        │   │   ├── stg_product_sales.sql
        │   │   └── stg_daily_revenue.sql
        │   │
        │   ├── dimensions/
        │   │   ├── dim_customer.sql
        │   │   └── dim_product.sql
        │   │
        │   ├── facts/
        │   │   └── fct_revenue.sql
        │   │
        │   ├── marts/
        │   │   └── mart_dashboard.sql
        │   │
        │   └── schema.yml
        │
        └── tests/
            ├── customer_tests.yml
            ├── revenue_tests.yml
            └── product_tests.yml