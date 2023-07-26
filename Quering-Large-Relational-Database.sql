3. Perform the following with help of the above database:
a. Get all the details from the person table including email ID, phone
number and phone number type
select *from [person].[person]
select *from [Person].[EmailAddress]
select *from [Person].[PersonPhone]
select *from [Person].[PhoneNumberType]


select P.*,PE.EmailAddress,PP.PhoneNumber,PT.Name
from [person].[person] P inner join [Person].[EmailAddress] PE
on P.BusinessEntityID=PE.BusinessEntityID inner join
[Person].[PersonPhone] PP on P.BusinessEntityID=PP.BusinessEntityID
inner join [Person].[PhoneNumberType] PT on PP.PhoneNumberTypeID=PT.PhoneNumberTypeID
b. Get the details of the sales header order made in May 2011
select *from [Sales].[SalesOrderHeader]
where year(orderdate)=2011 AND MONTH (ORDERDATE)=05

c. Get the details of the sales details order made in the month of May
2011Select *from [Sales].[SalesOrderHeader] soh
inner join [Sales].[SalesOrderDetail] sod
on soh.SalesOrderID=sod.SalesOrderID
where month(soh.OrderDate)=05 and year(soh.OrderDate)=2011

d. Get the total sales made in May 2011
select TOP 1 *from [Sales].[SalesOrderHeader]
select TOP 1 *from [Sales].[SalesOrderDetail]
Select SUM(sod.LINETOTAL)from [Sales].[SalesOrderHeader] soh
inner join [Sales].[SalesOrderDetail] sod
on soh.SalesOrderID=sod.SalesOrderID
where month(soh.OrderDate)=05 and year(soh.OrderDate)=2011

e. Get the total sales made in the year 2011 by month order by
increasing sales
Select SUM(sod.LINETOTAL)as totalsales,DATENAME(MM,ORDERDATE) from [Sales].[SalesOrderHeader] soh
inner join [Sales].[SalesOrderDetail] sod
on soh.SalesOrderID=sod.SalesOrderID
Where year(orderdate)=2011
GROUP BY DATENAME(MM,ORDERDATE),
order by totalsales


f.Get the name of the person table where first name start with G
select firstname from [Person].[Person]
where FirstName like 'G%'

