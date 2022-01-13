-- redirects to Store_Data dataset/schema, and overwrites All_Data
{{ config(materialized='table', schema='Store_Data') }}

SELECT *
FROM {{ ref('current_output') }}

UNION ALL
SELECT *
FROM {{ ref('historical_data') }}

UNION ALL
SELECT *
FROM {{ ref('forecast') }}