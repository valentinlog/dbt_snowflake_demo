SELECT
    o.order_key,
    o.customer_key,
    o.status_code,
    o.total_price,
    o.order_date,

    d.date_key AS order_date_key,

    s.gross_item_sales_amount,
    s.item_discount_amount

FROM {{ ref('stg_tpch_orders') }} o

INNER JOIN {{ ref('int_order_items_summary') }} s
    ON o.order_key = s.order_key

LEFT JOIN {{ ref('dim_date') }} d
    ON o.order_date = d.full_date
