
  
    

    create or replace table `analytics-take-home-test`.`monzo_james_2026`.`dim_users`
        
  (
    user_id string,
    first_account_created_at timestamp
    
    )

      
    
    

    
    OPTIONS(
      description="""descriptive attributes, and aggregated information of users"""
    )
    as (
      
    select user_id, first_account_created_at
    from (
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
    ) as model_subq
    );
  