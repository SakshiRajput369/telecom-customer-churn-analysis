select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
group by Gender

select Contract, Count(Gender) as TotalCount,
Count(Contract) * 1.0 / (select Count(*) from stg_Churn) as Percentage
from stg_Churn
group by Contract

select State, Count(State) as TotalCount,
count(State) * 100.0 / (select count(*) from stg_Churn) as Percentage
from stg_Churn
group by State
order by Percentage desc

select distinct Internet_Type
from stg_Churn