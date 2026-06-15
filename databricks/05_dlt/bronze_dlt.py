import dlt

@dlt.table
def bronze_orders():
    return spark.readStream.table(
        "ecommerce_bronze.orders"
    )

@dlt.table
def bronze_customers():
    return spark.readStream.table(
        "ecommerce_bronze.customers"
    )