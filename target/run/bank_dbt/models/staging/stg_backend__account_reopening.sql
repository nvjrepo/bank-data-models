

  create or replace view `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_reopening`
  OPTIONS(
      description="""staging layer for account reopening events"""
    )
  as with source as (
    select * from `analytics-take-home-test`.`monzo_datawarehouse`.`account_reopened`

),

renamed as (

    select 
        account_id_hashed as account_id,
        reopened_ts as account_reopened_at

    from source

)

select * from renamed;

