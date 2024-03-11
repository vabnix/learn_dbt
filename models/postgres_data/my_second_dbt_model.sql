
-- Use the `ref` function to select from other models

{{ config(materialized='table', alias='sample_model_tbl') }}

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
