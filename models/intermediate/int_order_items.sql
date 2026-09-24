SELECT
    li.order_item_key,
    li.part_key,
    li.line_number,
    li.extended_price,
    o.order_key,
    o.customer_key,
    o.order_date,
    {{ discounted_amount(
        'li.extended_price',
        'li.discount_percentage'
    ) }} AS item_discount_amount
FROM {{ ref('stg_tpch_orders') }} o
JOIN {{ ref('stg_tpch_line_items') }} li
    ON o.order_key = li.order_key