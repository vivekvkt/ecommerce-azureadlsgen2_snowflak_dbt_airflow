import dlt

@dlt.table
def silver_orders():

    return (
        dlt.read("bronze_orders")
        .dropDuplicates()
    )

@dlt.table
def silver_customers():

    return (
        dlt.read("bronze_customers")
        .dropDuplicates()
    )