df_gold = spark.table(
"ecommerce_gold.customer_revenue"
)

df_gold.write \
.format("snowflake") \
.options(**snowflake_options) \
.option(
"dbtable",
"CUSTOMER_REVENUE"
) \
.mode("overwrite") \
.save()


## repeat
# PRODUCT_SALES
# DAILY_REVENUE