with source as (
    select * from `analytics-take-home-test`.`monzo_datawarehouse`.`account_transactions`

),

renamed as (

    select
        to_hex(md5(cast(coalesce(cast(date as string), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(account_id_hashed as string), '_dbt_utils_surrogate_key_null_') as string))) as account_date_id,
        account_id_hashed as account_id,
        `date` as transaction_created_date,
        transactions_num as number_of_transactions

    from source

)

select * from renamed