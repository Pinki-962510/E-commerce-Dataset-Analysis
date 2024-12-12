CREATE DATABASE ecommerce_dataset;
use ecommerce_dataset;
SELECT * FROM ecommerce_dataset.online_sales;

# 1. What is the total number of purchases made in the "Sports" category?
use ecommerce_dataset;
SELECT COUNT(*) AS total_purchases
FROM online_sales
WHERE category = 'Sports';

# 2.Calculate the average discount percentage for all products.
SELECT avg(Discount)/100 as avg_discount FROM online_sales; 


ALTER TABLE	online_sales
change `Discount (%)` Discount int not null;

ALTER TABLE online_sales
CHANGE `Discount(%)` Discount INT NOT NULL;

show tables;
describe online_sales;

ALTER TABLE online_sales
change `Price (Rs.)` Price  int not null;


ALTER TABLE online_sales
change `Final_Price(Rs.)` Final_price int not null;

# 3.	Which payment method was used most frequently?
SELECT payment_method ,count(user_id) as total_transction
FROM online_sales
group by payment_method ;

SELECT payment_method,count(user_id) as total_transction
FROM online_sales
group by Payment_method
order by  total_transction desc
limit 1;

# 4.	What is the total revenue generated from purchases?
SELECT sum(final_price) as total_purchase
FROM online_sales;

# 5.	Identify the category with the highest average final price.

SELECT category , avg(final_price) as total_amount
FROM online_sales
group by  category 
order by total_amount desc
limit 1;


select * from online_sales;

# 6.	How many products were purchased using "Credit Card"?
SELECT payment_method,count(user_id) as total_product 
FROM online_sales
group by payment_method
having payment_method= "credit card";



# 7.	On which date was the maximum revenue generated?

SELECT purchase_date,sum(final_price) as total_amount
FROM online_sales
group by  purchase_date
order by total_amount desc
limit 1;

# 8.	List the categories and their corresponding total purchases.
SELECT category , sum(final_price) as total_purchase
FROM online_sales
group by category;

# 9.	What is the highest discount percentage given, and for which product category?
 SELECT
 category,
 (sum(discount)/sum(final_price))*100 as total_percentage
 FROM online_sales
 group by category 
 order by total_percentage desc
 limit 1;
 
SELECT * FROM online_sales;

#10.	Calculate the total revenue generated from the "Clothing" category purchases.
SELECT category,
sum(final_price) as total_price
FROM online_sales
where category = "Clothing"
GROUP BY category





 
 
 

