with source as (

    select * from {{ source('bi_usemoon', 'mv_aov_main_temp') }}

),

renamed as (

    select
        uid,
        activated_at,
        affid,
        affsub,
        plan,
        country_code,
        subdivision_code,
        has_lean_subscription,
        has_protein_subscription,
        loc,
        offerid,
        revenue_part,
        description,
        amount,
        is_purchase,
        is_voided_purchase,
        tid

    from source

)

select * from renamed
