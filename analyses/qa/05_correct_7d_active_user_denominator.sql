select * from monzo_james_2026.fct_daily_accounts
where account_id in (
    select account_id from monzo_james_2026.dim_accounts
    where reopened_at is not null
)
and account_status = 'closed'
and number_of_transactions != 0
order by date_day
