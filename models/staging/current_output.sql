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
FROM `source-data-314320.joyeria_dataset.gs_centro`
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
FROM `source-data-314320.joyeria_dataset.gs_segovia`
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
FROM `source-data-314320.joyeria_dataset.gs_patria`
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
FROM `source-data-314320.joyeria_dataset.gs_pasaje`
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
FROM `source-data-314320.joyeria_dataset.gs_vallardo`
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
FROM `source-data-314320.joyeria_dataset.gs_va_en_linea`
WHERE Date is not Null