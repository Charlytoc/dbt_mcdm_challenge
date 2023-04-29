{{
    config(
        materialized='table'
    )
}}

SELECT *  FROM `dbt_curated.src_ads_bing_all_data` LIMIT 200