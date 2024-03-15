use blinkit;

#Q.1: Write an SQL query to show all Item_Identifier

select item_identifier from blinkitp;

#Q.2: Write an SQL query to show count of total Item_Identifier.

select count(item_identifier) from blinkitp;

#Q.3: Write an SQL query to show maximum Item Weight.

select max(Item_weight) from blinkitp;

#Q.4: Write an SQL query to show minimum Item Weight.

select min(Item_weight) from blinkitp;

#Q.5: Write an SQL query to show average Item_Weight.

select avg(Item_weight) from blinkitp; 

#Q.6: Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
 
select count(item_fat_content) 
from blinkitp
where item_fat_content="Low fat";

#Q.7: Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(Item_fat_content) 
from blinkitp
where Item_Fat_Content = "Regular";

#Q.8: Write an SQL query to show maximum Item_MRP 

select max(item_MRP) as maximum_Item_MRP from blinkitp;

#Q.9: Write an SQL query to show minimum Item_MRP

select min(item_mrp) as Minimum_item_MRP  from blinkitp;

#Q.10: Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier, Item_fat_Content, Item_type,Item_MRP
from blinkitp
where Item_MRP>200;

#Q.11: Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 

select max(Item_MRP) as Maximum_Item_MRP
from blinkitp
where Item_Fat_Content = "Low Fat";

#Q.12: Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 

select min(Item_MRP) as Maximum_Item_MRP
from blinkitp
where Item_Fat_Content = "Low Fat";

#Q.13: Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from blinkitp
where Item_MRP between 50 and 100;

#Q.14: Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct item_fat_content
from blinkitp;

#Q.15: Write an SQL query to show ALL UNIQUE value of  Item_Type 

select distinct Item_Type 
from blinkitp;

#Q.16: Write an SQL query to show ALL DATA in descending ORDER by Item MRP 

select * from blinkitp
order by Item_MRP desc;

#Q.17: Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from blinkitp
order by Item_Outlet_Sales ;

#Q.18: Write an SQL query to show ALL DATA in ascending by Item_Type 

select * from blinkitp
order by Item_Type ;

#Q.19: Write an SQL query to show DATA of item_type dairy & Meat

select * from blinkitp
where Item_Type IN("dairy", "Meat");

#Q.20: Write an SQL query to show ALL UNIQUE value of Outlet_Size 

select distinct Outlet_size from blinkitp;

#Q.21: Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select distinct Outlet_location_type from blinkitp;

#Q.22: Write an SQL query to show ALL UNIQUE value of Outlet_Type 

select distinct Outlet_type from blinkitp;

#Q.23: Write an SQL query to show count of number of items by Item_Type  and order it in descending order

select item_type, count(*) as item_count
from blinkitp
group by Item_Type 
order by Item_count desc ;

#Q.24: Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order

select outlet_size, count(*) as outlet_size_count
from blinkitp
group by outlet_Size
order by outlet_size_count;

#Q.25: Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.

select outlet_type, count(*) as  outlet_Type_count
from blinkitp
group by Outlet_Type 
order by Outlet_Type_count desc;

#Q.26: Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order

select outlet_location_type, count(*) as outlet_location_type_count
from blinkitp
group by outlet_location_type
order by Outlet_Location_Type_count ;

#Q.27: Write an SQL query to show maximum MRP by Item_Type 

select item_type, max(item_MRP) as Maximum_MRP
from blinkitp
group by Item_Type
order by Maximum_MRP desc;

#Q.28: Write an SQL query to show minimum MRP by Item_Type 

select Item_type, min(item_MRP) as Min_MRP
from blinkitp
group by Item_Type 
order by Min_MRP asc ;

#Q.29: Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order

select Outlet_Establishment_Year , min(item_MRP) as Min_MRP
from blinkitp
group by Outlet_Establishment_Year 
order by Min_MRP desc;

#Q.30: Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order. 

select Outlet_Establishment_Year, max(item_MRP) as Maximum_MRP
from blinkitp
group by Outlet_Establishment_Year 
order by Maximum_MRP desc;

#Q.31: Write an SQL query to show average MRP by Outlet_Size and order it in descending order

select outlet_size, avg(Item_MRP) as avg_MRP
from blinkitp
group by Outlet_Size 
order by avg_MRP desc ;

#Q.32: Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.


select Outlet_Type, avg(Item_MRP) as avg_MRP
from blinkitp
group by Outlet_Type  
order by avg_MRP ;

#Q.33: Write an SQL query to show maximum MRP by Outlet_Type

select outlet_type, min(item_MRP) as Min_MRP
from blinkitp
group by Outlet_Type;

#Q.34: Write an SQL query to show maximum Item_Weight by Item_Type 

select item_type, max(Item_weight) as Max_weight
from blinkitp
group by Item_Type ;

#Q.35:Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 

select outlet_Establishment_Year, max(Item_weight) as Max_weight
from blinkitp
group by Outlet_Establishment_Year ;

#Q.36: Write an SQL query to show minimum Item_Weight by Outlet_Type

select outlet_type, min(item_weight) as min_weight
from blinkitp
group by Outlet_Type;

#Q.37:Write an SQL query to show total Item_Outlet_Sales by Item_Type 

select item_type, sum(item_outlet_sales) as total_sales
from blinkitp
group by item_type;

#Q.38: Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 

select item_type,outlet_location_type , sum(item_outlet_sales) as Total_sales 
from blinkitp
where Outlet_Location_Type ='Tier 1' 
group by Item_Type,Outlet_Location_Type  ;

#Q.39: Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select item_type,item_fat_content, sum(item_outlet_sales) as Total_Sales
from blinkitp
where Item_Fat_Content in ('Low Fat','LF')
group by item_type,item_fat_content;