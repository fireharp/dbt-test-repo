with users as (
    select * from {{ ref ('stg_main_bq__accounts') }}
)
select * from users

