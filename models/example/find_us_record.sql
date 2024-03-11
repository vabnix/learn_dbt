{{ config(materialize='view')}}

select distinct First_Name, Last_Name, City, Email, Phone_Number, Registration_Date
from customers
where City = 'New York'
order by First_Name