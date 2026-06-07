with accounts as (
    select * from `analytics-take-home-test`.`monzo_james_2026`.`dim_accounts`
),

users as (
    select
        user_id,
        min(created_at) as first_account_created_at
    
    from accounts
    group by 1

)

select * from users