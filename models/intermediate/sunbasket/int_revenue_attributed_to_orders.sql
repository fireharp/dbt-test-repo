with sb_orders as (
    select * from {{ ref('int_sb_orders_deduplicated') }}
)
, recurly_invoices as (
    select * from {{ ref('stg_recurly_invoices') }}
)
select
    *
from sb_orders
left join recurly_invoices on (sb_orders.invoice_id = recurly_invoices.invoice_number)
