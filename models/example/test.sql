{{
    config(
        materialized='table',
        alias='dbt_test'
    )
}}
select 1 id