select *
from `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts`
where date_day between DATE_SUB(DATE '2020-06-08', INTERVAL 6 DAY) and '2020-06-08'
    and account_status = 'active'
    and account_id in (
        select account_id from `analytics-take-home-test.monzo_james_2026.fct_daily_accounts`
        where true
            and date_day = DATE_SUB(DATE '2020-06-08', INTERVAL 6 DAY)
            and account_status = 'closed'
    );


select * from `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts`
where date_day between DATE_SUB(DATE '2020-06-08', INTERVAL 6 DAY) and '2020-06-08'
    and account_status = 'active'
    and account_id in (
        select account_id from `analytics-take-home-test.monzo_james_2026.fct_daily_accounts`
        where date_day between DATE_SUB(DATE '2020-06-08', INTERVAL 6 DAY) and '2020-06-08'
        group by 1
        having sum(case when account_status = 'closed' then 0 else 1 end) = 0
    );


select * from monzo_james_2026.fct_daily_accounts
where account_id in (
    select account_id from monzo_james_2026.dim_accounts
    where reopened_at is not null
)
and account_status = 'closed'
and number_of_transactions != 0
order by date_day
