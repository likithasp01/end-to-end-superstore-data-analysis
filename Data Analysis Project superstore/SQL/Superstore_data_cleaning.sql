show tables;

create table super_store
like superstore;

insert into super_store
select * from superstore;

select * from super_store;

describe super_store;

select `Row ID`, count(*) as duplicates
from super_store
group by `Row ID`
having count(*)>1;

alter table super_store
rename column `Order Date` to order_date;

alter table super_store
rename column `Order ID` to order_id;

alter table super_store
rename column `Ship Date` to ship_date;

alter table super_store
rename column `Ship Mode` to ship_mode;

alter table super_store
rename column `Customer ID` to customer_id;

alter table super_store
rename column `Customer Name` to customer_name;

alter table super_store
rename column `Postal Code` to postal_code;

alter table super_store
rename column `Product ID` to producct_id;

alter table super_store
rename column `Sub-Category` to sub_category;

alter table super_store
rename column `Product Name` to product_name;

set sql_safe_updates=0;

update super_store
set `order_date` = str_to_date(`order_date`, '%m/%d/%Y');

update super_store
set `ship_date` = str_to_date(`ship_date`, '%m/%d/%Y');

alter table super_store
modify `order_date` Date;

alter table super_store
modify `ship_date` Date;

select * from super_store
where order_id is null
or customer_id is null;

select distinct order_id
from super_store;

select customer_name
from super_store
where customer_name <>trim(customer_name);

select customer_name from super_store;

select product_name
from super_store
where product_name <>trim(product_name);

select product_name from super_store;

select distinct Region from super_store;

select order_date, ship_date
from super_store;