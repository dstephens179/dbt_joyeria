{{ config(materialized='table') }}

SELECT 
    CAST(tienda AS STRING) AS tienda,
    CAST("Menudeo" AS STRING) AS may_men,
    CAST(index AS DATE) AS date,
    CAST(owner AS STRING) AS owner,
    CAST(NULL AS STRING) AS metal_type,
    CAST(NULL AS STRING) AS linea,
    CAST(product_type AS STRING) AS product_type,
    CAST(NULL AS FLOAT64) AS sales,
    CAST(total_sales AS FLOAT64) AS forecast,
    CAST(NULL AS INT64) AS inventario,
    CAST(NULL AS STRING) AS nombre_cliente,
    CAST(NULL AS STRING) AS nombre_agente,
FROM `source-data-314320.joyeria_dataset.forecast`