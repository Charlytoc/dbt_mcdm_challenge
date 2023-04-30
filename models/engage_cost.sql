with bing as (
    SELECT channel, clicks, date, conv as conversions, ad_id, spend, imps as impressions  FROM dbt_curated.src_ads_bing_all_data

)

SELECT SUM(spend)/SUM(conversions) from bing 