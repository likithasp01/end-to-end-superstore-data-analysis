select Category, sum(Sales)
from super_store
group by Category;

select count(*)
from super_store;

select distinct(count(order_id))
from super_store;

select Region, sum(Sales)
from super_store
group by region;

select Region, max(Profit)
from super_store
group by region;

select Category, sum(Sales)
from super_store
group by Category;

select sub_category, sum(Sales)
from super_store
group by sub_category;

select product_name, Profit
from super_store
order by profit desc
limit 10;

select State, sum(Sales)
from super_store
group by State;

select City, sum(Sales)
from super_store
group by City;

select * from super_store
order by ship_mode;

select Sales, year(Sales)
from super_store;

select Quantity, max(sales)
from super_store
group by Quantity
order by Quantity;

