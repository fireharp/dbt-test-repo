with source as (

    select * from {{ source('airflow_dbreplica', 'authentication_account_actual') }}

),

renamed as (

    select
        id,
        password,
        last_login,
        email,
        username,
        first_name,
        last_name,
        is_staff,
        is_active,
        tagline,
        date_joined,
        is_email_verified,
        is_superuser,
        cell_phone,
        gender,
        birthdate,
        age,
        current_weight,
        goal_weight,
        height,
        affid,
        afid,
        aid,
        c1,
        c2,
        c3,
        prospect_id,
        sid,
        ip_address,
        tid,
        uid,
        intercom_id,
        verification_code,
        is_password_changed,
        nutritionist_staff_key,
        setmore_customer_key,
        affsub,
        timezone,
        referrer,
        initial_affid,
        initial_affsub,
        initial_tid,
        created_at,
        updated_at

    from source

)

select * from renamed
