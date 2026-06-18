{{ config(materialized='table') }}

SELECT *
FROM {{ source('snowflake','sales_analytics') }}

---dbt run --select mart_ai_dashboard