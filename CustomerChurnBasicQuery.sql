select Gender, count(Gender) as TotalCount,
count(Gender) * 100.0/ (select count(*) from stg_churn) as Percentage
from stg_churn
group by Gender



select Contract, count(Contract) as TotalCount,
count(Contract) * 1.0/ (select count(*) from stg_churn) as Percentage
from stg_churn
group by Contract




select Customer_Status, count(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (select Sum(Total_Revenue) from stg_churn) as RevPercentage
from stg_churn
group by Customer_Status




select State, count(State) as TotalCount,
count(State) * 100.0/ (select count(*) from stg_churn) as Percentage
from stg_churn
group by State
order by Percentage desc



select distinct Internet_Type
from stg_churn