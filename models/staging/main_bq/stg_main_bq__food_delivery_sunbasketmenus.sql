with source as (

    select * from {{ source('airflow_dbreplica', 'food_delivery_sunbasketmenu') }}

)

, renamed as (

    select
        id
        , created_at
        , updated_at
        , sunbasket_id
        , deadline
        , shipping_fee

    from source

)

select * from renamed
