

  create or replace view `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_creation`
  OPTIONS(
      description="""staging layer for account creation events"""
    )
  as with source as (

    select * from `analytics-take-home-test`.`monzo_datawarehouse`.`account_created`

),

renamed as (

    select
        account_id_hashed as account_id,
        user_id_hashed as user_id,
        created_ts as account_created_at,
        account_type

    from source

)

select * from renamed;

