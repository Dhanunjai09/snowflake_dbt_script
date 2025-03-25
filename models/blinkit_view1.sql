{{
    config(
        materialized='view'
    )
}}

SELECT '$'||TO_CHAR(ROUND(SUM(SALES)/1000000,2),'9999999.99')||'M' TOTAL_SALES,
       ROUND(AVG(SALES)) AVG_SALES,     
       COUNT(ITEM_IDENTIFIER) NO_OF_ITEMS,
       ROUND(AVG(RATING)) AVG_RATING
FROM {{ source('src_blinkit', 'blinkit_grocery_data_dev_t') }}