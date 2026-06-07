
    
    

with child as (
    select account_id as from_field
    from `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_closure`
    where account_id is not null
),

parent as (
    select account_id as to_field
    from `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_creation`
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


