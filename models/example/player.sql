{{ config(materialized='table') }}

with play_nba as (

    select position,first_name,team
    from `test-cdp-322216`.google_sheets_sipe.nba_players
)

select *
from play_nba

