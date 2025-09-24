
with days_atraso as (
    select
        *,
        if(
            date_diff(
                extract(date from order_delivered_customer_date),
                extract(date from order_estimated_delivery_date),
                day
            ) > 0,
            date_diff(
                extract(date from order_delivered_customer_date),
                extract(date from order_estimated_delivery_date),
                day
            ),
            0
        ) as days_dif
    from {{ ref('stg_orders') }}
)

select * from days_atraso
