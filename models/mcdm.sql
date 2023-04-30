{{
    config(
        materialized='table'
    )
}}
with bing_curated as (
    SELECT * from {{ ref('bing_curated') }}
)
SELECT SUM(spend) / SUM(conversions) from bing_curated group by channel 