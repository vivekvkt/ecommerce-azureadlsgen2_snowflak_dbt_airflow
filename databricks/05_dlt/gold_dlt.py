import dlt

@dlt.table
def customer_revenue():

    return (
        dlt.read("silver_orders")
        .groupBy("customer_id")
        .sum("total_amount")
    )