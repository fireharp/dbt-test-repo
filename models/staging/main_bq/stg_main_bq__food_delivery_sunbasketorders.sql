with source as (

    select * from {{ source('airflow_dbreplica', 'food_delivery_sunbasketorder') }}

)

, renamed as (
    select
        -- external ids
        sunbasket_order_id as sb_order_uid
        , safe_cast(invoice_id as INT64) as recurly_invoice_id

        -- ids
        , id as sb_order_backend_id
        , user_id
        , subscription_id as sb_subscription_backend_id
        , menu_id as sb_menu_backend_id
        , shipping_address_id as sb_shipping_adderss_backend_id

        -- strings
        , status
        , shipping_status

        -- numerics
        , shipping_price
        , taxes_price
        , total_price

        -- booleans
        , is_sunbasket_order_created
        , is_sunbasket_order_cancelled
        , is_usage_sent
        , is_prepaid

        -- dates
        , {{ dbt_utils.date_trunc('day', 'created_at') }} as created_date
        , {{ dbt_utils.date_trunc('day', 'updated_at') }} as updated_date
        , {{ dbt_utils.date_trunc('day', 'delivery_date') }} as delivery_date


        -- timestamps
        , created_at
        , updated_at

    from source
)

select * from renamed
