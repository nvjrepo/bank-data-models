with source as (
    
    select distinct * from `analytics-take-home-test`.`monzo_datawarehouse`.`account_closed`

),

renamed as (

    select 
        to_hex(md5(cast(coalesce(cast(account_id_hashed as string), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(closed_ts as string), '_dbt_utils_surrogate_key_null_') as string))) as account_closed_id,
        account_id_hashed as account_id,
        closed_ts as account_closed_at

    from source

)

select * from renamed