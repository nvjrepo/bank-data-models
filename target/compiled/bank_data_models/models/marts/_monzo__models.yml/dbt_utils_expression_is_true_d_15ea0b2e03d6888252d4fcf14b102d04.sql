



select
    *
from (select * from `analytics-take-home-test`.`monzo_james_2026`.`dim_accounts` where last_transaction_date is not null and last_closed_at is not null) dbt_subquery

where not(cast(last_closed_at as date) >= last_transaction_date)

