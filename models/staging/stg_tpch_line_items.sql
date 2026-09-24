SELECT
    md5(
    L_ORDERKEY || '-' || L_LINENUMBER
    ) as ORDER_ITEM_KEY,
    L_ORDERKEY AS order_key,
    L_PARTKEY AS part_key,
    L_LINENUMBER AS line_number,
    L_QUANTITY AS quantity,
    L_EXTENDEDPRICE AS extended_price,
    L_DISCOUNT AS discount_percentage,
    L_TAX AS tax_rate
FROM {{ source('tpch', 'lineitem') }}