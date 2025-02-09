create database mobile;
use mobile;
select * from mobile;
-- check mobile features and price list
select phone_name, price from mobile;
-- find out the price of 5 most expensive phones
select * from mobile
order by price desc
limit 5;
-- find out of the price of 5 modt cheapest phones0--
select * from mobile
order by price asc
limit 5;
-- List of top 5 samsung phones with price and all features--
select * from mobile where brands = "samsung"
order by price desc
limit 5;
-- Must have android phones list then top 5 high price android phones--
select * from mobile where operating_system_type = "Android"
order by price desc
limit 5;
-- Must have android phones list then top 5 lower price android phones--
select * from mobile where operating_system_type = "Android"
order by price asc
limit 5;
-- Must have IOS phone list then top 5 high price IOS phone--
select * from mobile where operating_system_type = "IOS"
order by price desc
limit 5;
-- Must have IOS phone list then top 5 lower price IOS phone--
select * from mobile where operating_system_type = "IOS"
order by price asc
limit 5;
-- write a query which phone support 5g and also top 5 phone with 5g support--
select * from mobile where 5g_availability = "Yes"
order by price desc
limit 5;
-- Total price of all mobile is to be found with brand name--
select brands, sum(price) from mobile group by brands;
