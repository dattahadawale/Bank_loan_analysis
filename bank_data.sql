create database bank_data ; 

drop database bank_data;
use  bank_data ;

select count(*) from financial_loan ;

select *  from financial_loan;

# dashboard 1 (summary) 

# to calculate avg rate 

select round(avg(int_rate) , 4 ) * 100 as avg_interest_rate from financial_loan;


select round(avg(int_rate) , 4 ) * 100 as avg_interest_rate from financial_loan
where month(issue_date) = 11 and year(issue_date) = 2021;


# DTI 

select round(avg(dti),4) * 100 as avg_DTI from financial_loan ;

select round(avg(dti),4) * 100 as MTD_avg_DTI from financial_loan 
where month(issue_date) = 12 and year(issue_date) = 2021;

# to calculate good loan 

select 
(count(case when loan_status  = 'Fully Paid' or loan_status = 'Current' then id end ) * 100 
/ count(id)) as good_loan_percentage
from financial_loan ;

# good loan application 

select count(id) as good_loan_application from financial_loan 
where loan_status  = 'Fully Paid' or loan_status = 'Current' ;

# good loan founded amount 

select sum(loan_amount) as good_loan_founded_amount from financial_loan
where loan_status = 'fully_paid' or loan_status = 'current';

# good loan amount received 

select sum(total_payment) as good_loan_amount_received from financial_loan 
where loan_status = 'fully_paid' or loan_status = 'current';

# bad loan percentage 

select 
round(count(case when loan_status = 'Charged Off' then id end ) * 100/  
count(id) , 2 )  as bad_loan_percentage 
from  financial_loan;

# bad loan application 

select count(id) as bad_loan_application from financial_loan
where loan_status = 'Charged Off' ;

select sum(total_payment) as bad_load_amount_received from  financial_loan
where loan_status = 'Charged Off';

# calculate the loan status 

select loan_status , 
count(id) as Total_loan_application , 
sum(total_payment) as Total_amount_received , 
sum(loan_amount) as Total_Funded_amount , 
avg(int_rate * 100) as Interest_rate , 
avg(dti * 100) as DTI 
from financial_loan 
group by loan_status ;


# dashboard 2 (overviews) 
 
# monthly trend 

select 
monthname(str_to_date(issue_date ,'%d-%m-%Y')) as month_name ,
count(id) as Total_loan_application , 
sum(loan_amount) as total_loan_application ,
sum(total_payment) as total_received_amount 
from financial_loan 
group by 
month(str_to_date(issue_date , '%d-%m-%Y')) , 
monthname(str_to_date(issue_date , '%d-%m-%Y')) 
order by 
monthname(str_to_date(issue_date , '%d-%m-%Y')) ;


# regional analysis by  sales 

select 
address_state ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
group by address_state 
order by count(id) desc ;

# loan terms analysis 

select 
term ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
group by term
order by term ;


# emp length analysis 

select 
emp_length ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
group by emp_length
order by count(id) desc ;


#  Loan purpose breakdown  

select 
purpose ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
group by purpose
order by count(id) desc ;


# home onwership analysis 

select 
home_ownership ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
group by home_ownership
order by count(id) desc  ;

# details 

select * from financial_loan ;
 
select 
home_ownership ,
count(id) as total_application , 
sum(loan_amount) as total_funded_amount , 
sum(total_payment) as total_received_amount 
from financial_loan 
where grade = 'A' and address_state = 'CA' 
group by home_ownership
order by count(id) desc  ;




SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose;



