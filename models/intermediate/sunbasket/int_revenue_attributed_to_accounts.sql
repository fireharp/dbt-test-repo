with tx as (
    select * from {{ ref('stg_main_bq__bi_transactions') }}
)
select
    user_id
    , count(distinct tid) as n_transactions
    , sum(amount) as total_sunbasket_recurly_amount
from tx
where lower(description) like '%sunbasket%'
group by 1
