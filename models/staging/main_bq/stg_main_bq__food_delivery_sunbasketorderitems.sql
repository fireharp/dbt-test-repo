with source as (

    select * from {{ source('airflow_dbreplica', 'food_delivery_sunbasketorderitem') }}

),

renamed as (

    select
        id,
        created_at,
        updated_at,
        quantity,
        item_id,
        order_id,
        quantity_added_to_plan,
        sub_type

    from source

)

select * from renamed
