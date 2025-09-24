
select * from {{ source('dbt_dataset', 'olist_order_items_dataset') }}
