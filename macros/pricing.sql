{% macro discounted_amount(
    extended_price,
    discount_percentage,
    scale=2
) %}

CAST(
    ({{ extended_price }} * (1 - {{ discount_percentage }}))
    AS DECIMAL(16, {{ scale }})
)

{% endmacro %}