with sb_orders as (
    select * from {{ ref('int_sb_orders_deduplicated') }}
)
, recurly_invoices as (
    select * from {{ ref('stg_recurly_invoices') }}
)
select
    so.* except(created_at, updated_at), 
    ri.* except(created_at, updated_at),
    so.created_at as so_created_at, 
    so.updated_at as so_updated_at,
    ri.created_at as ri_created_at, 
    ri.updated_at as ri_updated_at
from sb_orders so
left join recurly_invoices ri on (so.recurly_invoice_id = ri.invoice_number)
