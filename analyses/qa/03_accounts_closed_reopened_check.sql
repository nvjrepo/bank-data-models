select
    account_id,
    created_at,
    last_closed_before_reopened_at,
    reopened_at
from monzo_james_2026.dim_accounts
where account_id = '/YYtTJi2Ol2TWU9OUAeS2HUh6XlVmpSQZoJjkMhoVRhlv1bDpbSIf7qDGY6sRUcld3sPYATc1SsrqWA9fJxX8w==' ;

select distinct account_status
from `analytics-take-home-test.monzo_james_2026.fct_daily_accounts`
where account_id = '/YYtTJi2Ol2TWU9OUAeS2HUh6XlVmpSQZoJjkMhoVRhlv1bDpbSIf7qDGY6sRUcld3sPYATc1SsrqWA9fJxX8w=='
    and date_day < '2018-12-04' ;

select distinct account_status
from `analytics-take-home-test.monzo_james_2026.fct_daily_accounts`
where account_id = '/YYtTJi2Ol2TWU9OUAeS2HUh6XlVmpSQZoJjkMhoVRhlv1bDpbSIf7qDGY6sRUcld3sPYATc1SsrqWA9fJxX8w=='
    and date_day between '2018-12-04' and '2020-02-15';

select distinct account_status
from `analytics-take-home-test.monzo_james_2026.fct_daily_accounts`
where account_id = '/YYtTJi2Ol2TWU9OUAeS2HUh6XlVmpSQZoJjkMhoVRhlv1bDpbSIf7qDGY6sRUcld3sPYATc1SsrqWA9fJxX8w=='
    and date_day > '2020-02-15';
