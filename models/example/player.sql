{{ config(materialized='table') }}

with play_nba as (

    select position,first_name
    from `test-cdp-322216`.google_sheets_sipe.nba_players
    where first_name='LeBron'
)

select *
from play_nba
