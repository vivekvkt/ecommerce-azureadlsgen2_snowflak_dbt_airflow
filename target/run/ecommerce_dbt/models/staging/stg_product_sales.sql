
  create or replace   view ECOMMERCE_DB.DBT_DEV.stg_product_sales
  
  
  
  
  as (
    SELECT * FROM ECOMMERCE_DB.PUBLIC.PRODUCT_SALES
  );

