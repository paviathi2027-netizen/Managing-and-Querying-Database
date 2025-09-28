show databases;
Use Retail;
show tables;
Select * from Product;
select product_name,Brand,Price from product;
Select * from product where Price <=5000;
Select * from retail.Order;
Select * from product where brand='Samsung' and price >10000;
Select * from Product where brand='Samsung' or brand='Sony';
Select * from Product where (Brand='Puma' or Brand='Allen Solly') and Price<700;
Select * from Product where Brand='Puma' or (Brand='Allen Solly' and Price<700);
Select Customer_Name,Email from customer where customer_name like 'A%';
Select Customer_Name,Email from customer where customer_name like '%A';
select * from Rating where review like '%Good%' or review like '%Excellent%';
select * from customer where city in('Delhi','Mumai','Kolkata');
Select * from customer where phone_number is null;
Select * from customer where phone_number=null;
Select * from customer where customer_name ='Kabir Iyer'; #case sensitive
Select * from customer where Upper(customer_name) ='KABIR IYER'; #sol for case sensitive
Select customer_name,city,Substr(city,-2,2) as Reward_code FROM Customer;
Select order_id ,customer_id,Order_date from retail.order where month(order_date)=12 and year(order_date)=2024;
Select product_id,discount_percentage,start_date,end_date from discount where start_date<=curdate() and end_date>=curdate();
Select order_id,customer_id,date_format(order_date,'%d-%m-%y') as order_date from retail.order;
Select concat(city,',',country_id)as location from city;
Select concat(city,',',address) as Location from customer;
Select concat(city,'|',address) as Location from customer;
Select concat(city,'*',address) as Location from customer;
select substr(email,locate('@',email)+1) as email_domain from customer;