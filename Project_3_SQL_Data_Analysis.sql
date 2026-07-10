-- Project 3: SQL Data Analysis
use decodelabs;
show tables;

-- Display all records
select*from ecommerce;
-- Basic select queries
select product,TotalPrice from ecommerce;

-- filtering data
select*from ecommerce where OrderStatus="Delivered";
select OrderId,Product,TotalPrice from ecommerce where TotalPrice>1000;

-- Sorting Data
select OrderId,Product,TotalPrice from ecommerce order by TotalPrice DESC;
select OrderId,Product,TotalPrice from ecommerce order by TotalPrice ASC;

-- Grouping and Aggregation
select Product,Count(*) as TotalOrders from ecommerce group by Product;
select count(*) as TotalOrders from ecommerce;
select sum(TotalPrice) as TotalSales from ecommerce;
select avg(TotalPrice) as avgordervalue from ecommerce;
select OrderId,Product,TotalPrice from ecommerce order by TotalPrice desc limit 1;
select OrderId,Product,TotalPrice from ecommerce order by TotalPrice asc limit 1;
select PaymentMethod,count(*) as TotalOrders from ecommerce group by PaymentMethod;
select Product,avg(TotalPrice) as averagePrice from ecommerce group by product;
select product,sum(TotalPrice) as TotalSales from ecommerce group by product order by TotalSales desc;
select ReferralSource,count(*) as totalorders from ecommerce group by ReferralSource;
select OrderStatus ,count(*) as Totalorders from ecommerce group by OrderStatus;
select OrderId,Product,TotalPrice from ecommerce where TotalPrice>2000;
select distinct product from ecommerce order by product;
select avg(Quantity) as avgquantity from ecommerce;