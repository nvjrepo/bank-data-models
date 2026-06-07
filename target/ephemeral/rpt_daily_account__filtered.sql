__dbt__cte__rpt_daily_account__filtered as (


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
)