use project_blinkit;

#1
select * from Bt;

#2
select item_identifier from bt;

#3
select count(item_identifier) from bt;

#4
select max(item_weight) from bt;

#5
select min(item_weight) from bt;

#6
select avg(item_weight) from bt;

#7
select count(item_fat_content) from bt
where item_fat_content = 'low fat';

#8
select count(item_fat_content) from bt
where item_fat_content = 'regular';

#9
select max(item_mrp) from bt;

#10
select min(item_mrp) from bt;

#11
select item_fat_content,item_identifier,item_type,item_mrp from bt
where item_mrp > 200;

#12
select max(item_mrp) from bt
where item_fat_content = 'low fat';

#13
select min(item_mrp) from bt
where item_fat_content = 'low fat';

#14
select * from bt
where item_mrp between 50 and 100;

#15
select distinct (item_fat_content) from bt;

#16
select distinct (item_type) from bt;

#17
select * from bt
order by item_mrp desc;

#18
select * from bt
order by item_outlet_sales asc;

#19
select * from bt
order by item_type asc;

#20
select * from bt
where item_type in ('Dairy', 'Meat')
order by item_type desc;

#21 
select distinct (outlet_size) from bt;

#22
select distinct (outlet_location_type) from bt;

#23 
select distinct (outlet_type) from bt;

#24
select count(item_type) from bt
group by item_type
order by count(item_type) desc;

# only show
select item_type from bt
group by item_type;

# other method
select distinct count(item_type) from bt
group by item_type;

#25
select outlet_size ,count(item_type) from bt
group by outlet_size
order by count(outlet_size) asc;
#OR
select distinct count(item_type), outlet_size from bt
group by outlet_size
order by count(outlet_size) asc;
#OR
SELECT outlet_size , count(item_type) FROM bt
GROUP BY outlet_size 
ORDER BY count(Item_type) asc;

#26
select outlet_type ,count(item_type) from bt
group by outlet_type
order by count(item_type) desc;
#OR
select distinct count(item_type),outlet_type from bt
group by outlet_type
order by count(item_type) desc;

#27
select outlet_location_type ,count(item_type) from bt
group by outlet_location_type
order by count(item_type) desc;
#OR
select distinct count(item_type),outlet_location_type from bt
group by outlet_location_type
order by count(item_type) desc;

#28
SELECT item_type, max(item_mrp) FROM bt
GROUP BY item_type;

#29
SELECT item_type, min(item_mrp) FROM bt
GROUP BY item_type;

#30
SELECT outlet_establishment_year , min(item_mrp) FROM bt
GROUP BY outlet_establishment_year
ORDER by min(item_mrp) desc;

#31
SELECT outlet_establishment_year , max(item_mrp) FROM bt
GROUP BY outlet_establishment_year
ORDER by max(item_mrp) desc;

#32
SELECT outlet_size, avg(item_mrp) FROM bt
GROUP BY outlet_size
ORDER by avg(item_mrp) desc;

#33
SELECT outlet_type, avg(item_mrp) FROM bt
GROUP BY outlet_type
ORDER by avg(item_mrp) asc;

#34
SELECT outlet_type, max(item_mrp) FROM bt
GROUP by outlet_type;

#35
SELECT item_type , max(item_weight) FROM bt
GROUP by item_type;

#36
SELECT outlet_establishment_year, max(item_weight) FROM bt
GROUP by outlet_establishment_year;

#37
SELECT outlet_type , min(item_weight) FROM bt
GROUP by outlet_type;

#38
SELECT outlet_location_type , avg(item_weight) FROM bt
GROUP by outlet_location_type
order by avg(item_weight) desc;

#39
SELECT item_type , max(item_outlet_sales) FROM bt
GROUP by item_type;

#40
SELECT item_type , min(item_outlet_sales) FROM bt
GROUP by item_type;

#41
SELECT outlet_establishment_year , min(item_outlet_sales) FROM bt
GROUP by outlet_establishment_year;

#42
SELECT outlet_establishment_year , min(item_outlet_sales) FROM bt
GROUP by outlet_establishment_year
order by min(item_outlet_sales) desc;

#43
SELECT outlet_size , avg(item_outlet_sales) FROM bt
GROUP by outlet_size
order by min(item_outlet_sales) desc;

#44
SELECT outlet_type , avg(item_outlet_sales) FROM bt
GROUP by outlet_type;

#45
SELECT outlet_type , max(item_outlet_sales) FROM bt
GROUP by outlet_type;

#46
select item_type , sum(item_outlet_sales) FROM bt
GROUP by item_type;

#47
select item_fat_content , sum(item_outlet_sales) FROM bt
GROUP by item_fat_content;

#48
select item_type , max(item_visibility) FROM bt
GROUP by item_type;

#49
select item_type , min(item_visibility) FROM bt
GROUP by item_type;

#50
select item_type , sum(item_outlet_sales) FROM bt
where outlet_location_type = 'tier 1'
GROUP by item_type;

#51
select item_type , sum(item_outlet_sales) FROM bt
where item_fat_content = 'low fat'or 'LF'
GROUP by item_type;

#OR
select item_type , sum(item_outlet_sales) FROM bt
where item_fat_content in ('low fat', 'LF')
GROUP by item_type;
