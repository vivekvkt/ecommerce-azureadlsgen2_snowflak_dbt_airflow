🚀 E-Commerce Analytics Chatbot Project
📌 Project Overview

This project demonstrates an end-to-end Data Engineering and Analytics platform using:

Azure Data Lake Storage Gen2 (ADLS)
Azure Databricks
Snowflake
dbt
Apache Airflow
Python
Streamlit

The final output is an Analytics Chatbot that allows business users to ask questions such as:

total sales
top customer
top product
completed orders
city wise sales

The chatbot reads data from Snowflake and displays:

User Question
SQL Query Used
Business Answer
🏗️ Complete Architecture
+-------------------+
| Source CSV Files  |
+-------------------+
          |
          v
+-------------------+
| ADLS Gen2         |
| Raw Zone          |
+-------------------+
          |
          v
+-------------------+
| Azure Databricks  |
| Bronze Layer      |
| Silver Layer      |
| Gold Layer        |
+-------------------+
          |
          v
+-------------------+
| Snowflake         |
| Curated Tables    |
+-------------------+
          |
          v
+-------------------+
| dbt Models        |
| Staging           |
| Dimensions        |
| Facts             |
| Marts             |
+-------------------+
          |
          v
+---------------------------+
| MART_AI_DASHBOARD         |
+---------------------------+
          |
          v
+-------------------+
| Python Chatbot    |
+-------------------+
          |
          v
+-------------------+
| Streamlit UI      |
+-------------------+

Airflow orchestrates the complete workflow
📂 Repository Structure
ecommerce-platform/
│
├── databricks/
│
├── snowflake/
│
├── airflow/
│   └── dags/
│       └── ecommerce_pipeline.py
│
├── dbt/
│   └── ecommerce_dbt/
│
├── powerbi/
│
├── ai-chatbot/
│   ├── app.py
│   ├── chatbot.py
│   ├── snowflake_connection.py
│   ├── streamlit_app.py
│   ├── execute_query.py
│   ├── text_to_sql.py
│   ├── requirements.txt
│   └── .env
│
├── README.md
│
└── .gitignore
🔄 End-to-End Data Flow
Step 1: Data Ingestion

Raw CSV files are uploaded to:

Azure Data Lake Storage Gen2

Example:

orders.csv
customers.csv
products.csv
payments.csv
Step 2: Databricks Processing

Databricks performs:

Bronze Layer

Raw data ingestion.

Raw CSV → Bronze
Silver Layer

Data cleansing.

Null handling
Duplicates removal
Data validation
Gold Layer

Business-ready datasets.

Orders
Customers
Products
Payments
Step 3: Snowflake Loading

Curated data is loaded into Snowflake.

Example:

COPY INTO SALES_FACT
FROM @stage
FILE_FORMAT=(TYPE='CSV');
Step 4: dbt Transformations

dbt builds:

Staging Models
stg_orders
stg_customers
stg_products
Dimension Tables
dim_customer
dim_product
dim_date
Fact Tables
fact_orders
Mart Layer
MART_AI_DASHBOARD
📊 MART_AI_DASHBOARD

The chatbot reads from:

SELECT *
FROM DBT_DEV.MART_AI_DASHBOARD

Sample columns:

Column
ORDER_ID
ORDER_DATE
CUSTOMER_NAME
CITY
COUNTRY
PRODUCT_NAME
CATEGORY
TOTAL_AMOUNT
PAYMENT_STATUS
🤖 Analytics Chatbot
Objective

Allow users to ask business questions using natural language.

Example:

total sales
Chatbot Flow
User Question
      |
      v
chatbot.py
      |
      v
Snowflake Data
      |
      v
Business Logic
      |
      v
SQL + Answer
Supported Questions
Total Sales
total sales

SQL:

SELECT SUM(TOTAL_AMOUNT)
FROM DBT_DEV.MART_AI_DASHBOARD;
Top Customer
top customer

SQL:

SELECT CUSTOMER_NAME,
       SUM(TOTAL_AMOUNT)
FROM DBT_DEV.MART_AI_DASHBOARD
GROUP BY CUSTOMER_NAME
ORDER BY 2 DESC
LIMIT 1;
Total Orders
total orders
Completed Orders
completed orders
Top Product
top product
City Wise Sales
city wise sales
🖥️ Streamlit Implementation
Why Streamlit?

Provides a browser-based UI.

Benefits:

Free
Fast development
Interactive
Good for demos
Installation
pip install streamlit
Execution
streamlit run streamlit_app.py
Output

Displays:

Question

SQL Used

Answer

Example:

Question:
total sales

SQL:
SELECT SUM(TOTAL_AMOUNT)
FROM DBT_DEV.MART_AI_DASHBOARD

Answer:
₹432,400
⚙️ Airflow Implementation
Why Airflow?

Without Airflow:

Manual execution

With Airflow:

Scheduled execution
Workflow
Databricks
     |
     v
Snowflake Load
     |
     v
dbt Run
     |
     v
dbt Test
     |
     v
Refresh MART_AI_DASHBOARD
DAG Design
databricks_job
 >> snowflake_load
 >> dbt_run
 >> dbt_test
 >> refresh_dashboard
Benefits
Scheduling
Daily
Hourly
Weekly
Dependency Management
Task A must finish
before Task B starts
Monitoring
Success
Failure
Retries
▶️ How To Run Project
Step 1

Clone repository

git clone <repo_url>
Step 2

Create virtual environment

python -m venv env
Step 3

Activate

env\Scripts\activate
Step 4

Install packages

pip install -r requirements.txt
Step 5

Configure Snowflake credentials

USER=
PASSWORD=
ACCOUNT=
WAREHOUSE=
DATABASE=
SCHEMA=
Step 6

Verify Snowflake

python snowflake_connection.py
Step 7

Start Streamlit

streamlit run streamlit_app.py
Step 8

Open browser

http://localhost:8501
🧪 Sample Questions
total sales
top customer
top product
total orders
completed orders
city wise sales
💼 Interview Explanation

Developed an end-to-end Analytics Chatbot using Azure Data Lake Gen2, Databricks, Snowflake, dbt, Airflow, Python and Streamlit. Data is ingested into ADLS, transformed in Databricks, loaded into Snowflake, modeled using dbt, orchestrated through Airflow, and exposed through a Streamlit chatbot interface. The chatbot displays both SQL queries and business insights for transparency and validation.

🚀 Future Enhancements
![Chatbot Demo](https://raw.githubusercontent.com/<username>/<repo-name>/main/screenshots/total_sales.png)

## 📊 TOP SALES Dashboard

<p align="center">
  <img src="https://github.com/vivekvkt/ecommerce-azureadlsgen2_snowflak_dbt_airflow/blob/main/streamlit_dashboard.PNG" width="900">
</p>

## 📊 TOP CUSTOMERS Dashboard

<p align="center">
  <img src="https://github.com/vivekvkt/ecommerce-azureadlsgen2_snowflak_dbt_airflow/blob/main/top_customers.PNG" width="900">
</p>