create database clothingapp;
use clothingapp;
desc myntra;
alter table myntra
add primary key (productid);
desc myntra;
-- find product with a rating >4.5--
select * from myntra where rating> 4.5;
-- list the top 5 highest-priced product --
select * from myntra order by price desc limit 5;
-- find the avg price of all products--
select avg(price) from myntra;
-- count the number of products from the seller 'roadster'--
select count(*) from myntra where seller = 'Roadster';
-- find all products where current price is <500--
select * from myntra where price < 500;
-- list all products that are available in black colour--
select * from myntra where primarycolor='black';
-- calculate  the percentage of products with a rating of 4.0 or above--
select(count(*)*100.00/(select count(*) from myntra)) 
from myntra where rating >=4.0;
-- find the product with the highest number of total ratings--
select * from myntra order by ratingtotal desc limit 1;
-- Get the total number of products available from different sellers--
select seller,count(*) from myntra group by seller;
-- find the maximum, minimum and average disc available across all products--alter
select max(discount), min(discount),avg(discount) from myntra;
-- list all products that have a discount but are still priced above 1000--
select *from myntra where discount> 0 and price> 1000;
-- show the total number of products for each PrimaryColor
select PrimaryColor, count(*) from myntra group by PrimaryColor;

-- list all products with more than 10000 ratings and a rating of 4.0 or above --

select * from myntra where ratingtotal > 10000 and rating >=4.0;

-- find products with the greatest difference between mrp and price --

select *,(mrp-price) as price_difference from myntra order by price_difference desc
limit 5;
-- list the names of products that are sold by more than one seller--
select name,count(distinct seller) from myntra group by name having
 count(distinct seller) >1;
-- find the average rating for products sold by 'roadster'--
select avg(rating) from myntra where seller ='roadster';
-- get the top 3 products with the highest discount percentage--
select * from myntra order by discount desc limit 3;
-- list all unique product names along with the count of different colors they are available in--
select name, count(distinct primarycolor) from myntra group by name;
-- find the products where the price is more than 70% of the mrp--
select * from myntra where(price/mrp)> 0.7;









