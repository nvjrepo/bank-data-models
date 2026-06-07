
  
    

    create or replace table `analytics-take-home-test`.`monzo_james_2026`.`rpt_active_users_7d`
      
    
    

    
    OPTIONS(
      description="""Metrics for active users in 7-day period"""
    )
    as (
      with  __dbt__cte__rpt_daily_account__filtered as (


with filtered_accounts as (
    select * from `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts`
    where date_day between '2020-06-08' - 6 and '2020-06-08'

),

users as (
    select distinct user_id from filtered_accounts
    where account_status = 'active'

),

active_users as (
    select distinct user_id from filtered_accounts
    where number_of_transactions > 0

)

select
    users.user_id,
    active_users.user_id is not null as is_active_user
 
from users
left join active_users
    on users.user_id = active_users.user_id
), users as (
    select * from __dbt__cte__rpt_daily_account__filtered

)

select 
    count(*) as total_7days_users,
    count(case when is_active_user then user_id end) as total_7days_active_users,
    round(
        safe_divide(
            count(case when is_active_user then user_id end),
            count(*)
        ),
        4
    ) as active_users_7days_percentage

from users
    );
  