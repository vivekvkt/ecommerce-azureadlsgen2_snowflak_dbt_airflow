
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_revenue
from ECOMMERCE_DB.DBT_DEV.mart_dashboard
where total_revenue is null



  
  
      
    ) dbt_internal_test