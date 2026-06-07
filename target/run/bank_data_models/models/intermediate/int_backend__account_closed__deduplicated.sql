
  
    

    create or replace table `analytics-take-home-test`.`monzo_james_2026`.`int_backend__account_closed__deduplicated`
        
  (
    account_closed_id string,
    account_id string,
    account_closed_at timestamp,
    next_closed_at timestamp
    
    )

      
    
    

    
    OPTIONS(
      description="""Since there were cases time differences between closing times for the same  account was less than 1 minute, the model performed deduplication by keeping  closing events:\n  - Unique for a given account\n  - Differences in day between closing events need to be more than 0 for the same account \n"""
    )
    as (
      
    select account_closed_id, account_id, account_closed_at, next_closed_at
    from (
        

with source as (
    select
        *,
        lag(account_closed_at) over (partition by account_id order by account_closed_at) as next_closed_at

    from `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_closure`

)

select *
from source
where
    date_diff(next_closed_at, account_closed_at, day) is null
    or date_diff(next_closed_at, account_closed_at, day) != 0
    ) as model_subq
    );
  