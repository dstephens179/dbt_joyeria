-- redirects to Store_Data dataset/schema, and overwrites All_Data master table
{{ config(materialized='table', schema='Store_Data') }}

SELECT *
FROM {{ ref('current_output') }}
WHERE Date is not Null

UNION ALL
SELECT *
FROM {{ ref('historical_data') }}
WHERE Date is not Null

UNION ALL
SELECT *
FROM {{ ref('forecast') }}
WHERE Date is not Null