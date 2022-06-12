with accounts as (
    select
        *
        , row_number() over (partition by id order by updated_at desc) = 1 as is_latest
    from {{ ref('stg_main_bq__accounts') }}
)
select * from accounts where is_latest
