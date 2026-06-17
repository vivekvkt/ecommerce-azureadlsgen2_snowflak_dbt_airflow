
  
    



create or replace transient  table ECOMMERCE_DB.DBT_DEV.dim_product
    
    
    
    
    as (SELECT 
    product_id,
    total_orders
FROM ECOMMERCE_DB.DBT_DEV.stg_product_sales
    )
;



  