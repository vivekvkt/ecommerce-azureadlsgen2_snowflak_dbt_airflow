
  
    



create or replace transient  table ECOMMERCE_DB.DBT_DEV.dim_customer
    
    
    
    
    as (SELECT 
    customer_id,
    total_revenue
FROM ECOMMERCE_DB.DBT_DEV.stg_customer_revenue
    )
;



  