with source as (

    select * from {{ source('airflow_dbreplica', 'food_delivery_sunbasketitem') }}

),

renamed as (

    select
        id,
        created_at,
        updated_at,
        data,
        menu_id,
        recommended,
        image

    from source

)

select * from renamed
