
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below


{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data
*/

/*
    Uncomment the line below to remove records with null `id` values
*/

with player as (

    select
    last_name
    from `test-cdp-322216`.google_sheets_sipe.nba_players
    where first_name='Jimmy'
)

select * from player