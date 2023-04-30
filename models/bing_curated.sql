{{
    config(
        materialized='table'
    )
}}
SELECT channel, clicks, date, conv as conversions, ad_id, spend, imps as impressions  FROM dbt_curated.src_ads_bing_all_data as bing
UNION ALL
SELECT channel, clicks, date, purchase as conversions, ad_id,spend, impressions  FROM dbt_curated.src_ads_creative_facebook_all_data as facebook
UNION ALL
SELECT channel, clicks, date, conversions, ad_id,spend, impressions  FROM dbt_curated.src_ads_tiktok_ads_all_data as tiktok
UNION ALL
SELECT channel, clicks, date, likes as conversions,campaign_id as ad_id,spend, impressions  FROM dbt_curated.src_promoted_tweets_twitter_all_data as twitter
