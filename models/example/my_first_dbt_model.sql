
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', alias='dbt_first_model') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *, {{var('success_condition')}} as success_condition
from source_data
where id >= {{var('second_condition')}}

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
