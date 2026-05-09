# 1 - see all shipments 
SELECT Product, s.Date ,Amount, Boxes From shipments s;

# 2 - see all shipments by SP02

SELECT * FROM shipments s
WHERE s.`Sales Person` = 'SP02';

# 3 - see all shipments by SP02 to G3

SELECT * FROM shipments S
WHERE s.`Sales Person` = 'SP02' and s.`Geo` = 'G3' 
Order by s.amount DESC; 

# 4- see all shipments in jan 2023

SELECT * FROM shipments s
WHERE s.Date between 2022-07-1 and 2022-07-31;
 
select * from shipments_new s
where Extract(year_month from s.Date) = 202301;


# 5- see all shipments by SP02, SP03, SP12, SP15
select * from shipments_new s
where s.`Sales Person` = "SP02" 
       or s.`Sales Person` ="SP03"
	   or s.`Sales Person` ="SP12" 
       or s.`Sales Person` ="SP15" 
       
       #or
       
SELECT * FROM shipments_new s       
where s.`Sales Person` in ("SP02", "SP03","SP12","SP15");

# 6 - PRODUCTS THAT HAVE WORLD CHOCO IN THEM

select * from products
where product  like '%choco%';

# 7 - sales person whos name begin with S

select * from people
where `Sales Person` LIKE  "S%" and Location = 'Hyderabad';

 # 8 - sales per box of chocolate in feb 2023
 
 SELECT s.Amount,
		s.Date,
		s.Boxes,
        round(s.Amount / s.Boxes, 1) AS 'Amount per Box'
        from shipments_new s
WHERE extract(year_month from s.Date) = 202302; 

#9 - all shipment data from Subrack
select * from people
where `Sales Person` like 'sub%';

select * from shipments_new s 
where `Sales Person` = 'sp11';
 
 select p.`Sales Person`, s.Date, s.Amount,s.boxes 
 from shipments_new s
 join people p on p.`sp id` = s.`Sales Person` 
 where p.`Sales Person` LIKE 'sub%';
 
 # 10 all shipment data ffor subharao by month
  select extract(year_month from s.Date),sum(s.Amount),
  sum(s.boxes) 
 from shipments_new s
 join people p on p.`sp id` = s.`Sales Person` 
 where p.`Sales Person` LIKE 'sub%'
 group by extract(year_month from s.Date);
 
 






