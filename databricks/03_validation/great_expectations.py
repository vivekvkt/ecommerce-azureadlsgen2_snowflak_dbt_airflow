import great_expectations as gx

gx_df = gx.from_pandas(df.toPandas())

gx_df.expect_column_values_to_not_be_null(
"customer_id"
)

gx_df.expect_column_values_to_be_unique(
"customer_id"
)