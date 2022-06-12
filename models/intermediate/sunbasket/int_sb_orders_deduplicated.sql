{{ dbt_utils.deduplicate(
    relation=ref('stg_main_bq__food_delivery_sunbasketorders'),
    partition_by='sb_order_backend_id',
    order_by="updated_at desc",
   )
}}

{#
-- with orders as (
--     select
--         *
--         , row_number() over (partition by id order by updated_at desc) = 1 as is_latest
--     from {{ ref('stg_main_bq__food_delivery_sunbasketorders') }}
-- )
-- select * from orders where is_latest
#}
