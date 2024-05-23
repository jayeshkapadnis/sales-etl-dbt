WITH sales_data AS (
    SELECT * FROM {{ ref('sales_data') }}
),

constants AS (
    SELECT * FROM {{ ref('constants') }}
)

SELECT
    sd.sale_id,
    c.constant_name AS product_name,
    sd.quantity,
    sd.sale_date
FROM
    sales_data sd
JOIN
    constants c
ON
    sd.product_id = c.constant_value;