-- back compat for old kwarg name
  
  
        
            
	    
	    
            
        
    

    

    merge into `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts` as DBT_INTERNAL_DEST
        using (
        select
        * from `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts__dbt_tmp`
        ) as DBT_INTERNAL_SOURCE
        on ((DBT_INTERNAL_SOURCE.event_id = DBT_INTERNAL_DEST.event_id))

    
    when matched then update set
        `event_id` = DBT_INTERNAL_SOURCE.`event_id`,`account_id` = DBT_INTERNAL_SOURCE.`account_id`,`user_id` = DBT_INTERNAL_SOURCE.`user_id`,`date_day` = DBT_INTERNAL_SOURCE.`date_day`,`number_of_transactions` = DBT_INTERNAL_SOURCE.`number_of_transactions`,`account_status` = DBT_INTERNAL_SOURCE.`account_status`
    

    when not matched then insert
        (`event_id`, `account_id`, `user_id`, `date_day`, `number_of_transactions`, `account_status`)
    values
        (`event_id`, `account_id`, `user_id`, `date_day`, `number_of_transactions`, `account_status`)


    