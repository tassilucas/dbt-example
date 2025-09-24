
select * from {{ source('dbt_dataset', 'olist_orders_dataset') }}
