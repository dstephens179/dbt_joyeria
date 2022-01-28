{{ config(materialized='table') }}

SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.Centro_2015_2021-12-31`
WHERE Date is not Null

UNION ALL
SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.Segovia_2017_2021-12-31`
WHERE Date is not Null

UNION ALL
SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.Patria_2015_2021-12-31`
WHERE Date is not Null

UNION ALL
SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.Pasaje_2017_2021-12-31`
WHERE Date is not Null

UNION ALL
SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.Vallardo_2018_2021-12-31`
WHERE Date is not Null

UNION ALL
SELECT 
    tienda,
    may_men,
    date,
    owner,
    metal_type,
    linea,
    product_type,
    sales,
    NULL AS forecast,
    inventario,
    nombre_cliente,
    nombre_agente,
FROM `source-data-314320.historical_data.VA_en_linea_2018_2021-12-31`
WHERE Date is not Null
