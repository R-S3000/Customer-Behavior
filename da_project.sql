use customer_behavior;
select * from customer;
#revenue generated male vs female
select gender, sum(purchase_amount) as revenue
from customer
group by gender;

#which customer used discount code but still spent more than avt amount?
select * from customer;
select customer_id,purchase_amount
from customer
where discount_applied='Yes' and purchase_amount>(select avg(purchase_amount) from customer); 

#which are the products with highest average rating
select item_purchased,avg(review_rating)
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5; 

#Compare the average Purchase Amounts between Standard and Express Shipping. 
select shipping_type ,avg(purchase_amount)
from customer 
group by shipping_type
having shipping_type in('Standard' ,'Express');

SELECT shipping_type, AVG(purchase_amount)
FROM customer
WHERE shipping_type IN ('Standard', 'Express')  -- Adjust 'Express' to match your exact value
GROUP BY shipping_type;


# Do subscribed customers spend more? Compare average spend and total revenue 
#-between subscribers and non-subscribers.
	select subscription_status ,count(customer_id) as counts ,avg(purchase_amount) as average,sum(purchase_amount) as total_Revenue
    from customer 
    group by subscription_status;
    
    #Which 5 products have the highest percentage of purchases with discounts applied?
    select item_purchased,count(item_purchased) as cnt from customer
    where discount_applied='Yes'
    group by item_purchased
    order by cnt desc
    limit 5;
     #Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment.
with customer_type as (
select previous_purchases ,
case
	when previous_purchases=1 then 'New'
    when previous_purchases between 2 and 10 then 'Returning'
    else 'loyal'
end as 'segment'
from customer)
select segment ,count(*) from customer_type 
group by segment;

#Q8. What are the top 3 most purchased products within each category? 
select distinct(category) from customer;
with item_cat as(
select category,item_purchased,count(customer_id) as tot_count,
rank() over(partition by category order by count(customer_id) desc)as item_rank
from customer
group by category,item_purchased)
select category,item_purchased,item_rank,tot_Count from item_cat
where item_rank<=3;

 #Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
select subscription_status,count(customer_id)
 from customer
 where previous_purchases> 5
 group by subscription_status;
 
 #What is the revenue contribution of each age group?
 select purchase_amount from customer;
select age_group ,sum(purchase_amount) as revenue
from customer
group by age_group
order by revenue desc;