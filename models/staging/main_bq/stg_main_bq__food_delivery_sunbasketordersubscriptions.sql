with source as (

    select * from {{ source('airflow_dbreplica', 'food_delivery_sunbasketordersubscription') }}

),

renamed as (

    select
        id,
        created_at,
        updated_at,
        subscription_id,
        status,
        number_of_meals,
        next_meal_box_at,
        user_id,
        number_of_meal_kits

    from source

)

select * from renamed
