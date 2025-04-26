--What is the total transaction amount?

select sum(amount) as Total_Transaction_Amount
from creditcard

--What is the average transaction amount?

select avg(amount) as Average_Transaction_Amount
from creditcard

--How many fraudulent transactions occured?

Select count(*) as Fraudulent_Transactions 
from creditcard where class = 1

--What is the total transaction amount for fradulent transactions?
select sum (Amount) as Fraudulent_Transaction_Amount
from creditcard where class = 1


--What is the average transaction amount for fraudulent vs. non-fraudulent transactions?
select class, AVG(Amount) AS Average_Transaction_Amount
from creditcard
group by Class

--What is the distribution of transactions over time?

select time, count(*) as Transaction_Count
from creditcard
group by time

--Which time period has the highest fradulent transactions?

select time, count(*) as Fraud_Count
from creditcard
where class = 1
group by time
order by Fraud_Count DESC
limit 5

--What is the maximum and minimum transaction amount?

select Max(Amount) As Maximum_Transaction, Min(Amount) as Minimum_Amount
from creditcard

--How many transactions are above a certain threshold

select count(*) as High_Range_Transactions
from creditcard
where Amount > 500

--What percentage of transactions are fraudulent?
select (count(case when Class = 1 then 1 end) * 100.0 / count(*)) as Fraud_Percentage
from creditcard