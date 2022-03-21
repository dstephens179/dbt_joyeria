-- redirects to Store_Data dataset/schema, and overwrites All_Data
{{ config(materialized='table', schema='Store_Data') }}

WITH All_Data as (
    SELECT *
    FROM {{ ref('current_output') }}

    UNION ALL
    SELECT *
    FROM {{ ref('historical_data') }}

    UNION ALL
    SELECT *
    FROM {{ ref('forecast') }}
)

SELECT 
    All_Data.*,
    gold_price.* EXCEPT (date)
FROM All_Data
LEFT JOIN `source-data-314320.joyeria_dataset.gold_price` AS gold_price
    ON All_Data.date = gold_price.date
