
  
    



create or replace transient  table ECOMMERCE_DB.DBT_DEV.fct_revenue
    
    
    
    
    as (SELECT 
    c.customer_id,
    c.total_revenue,
    p.total_orders
FROM ECOMMERCE_DB.DBT_DEV.stg_customer_revenue c
LEFT JOIN ECOMMERCE_DB.DBT_DEV.stg_product_sales p
    ON 1=1
    )
;



  