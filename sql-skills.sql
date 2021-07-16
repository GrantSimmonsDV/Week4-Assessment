-- Artist Table

insert into artist (artist_id, name)
values (276, 'Banjo Bobby'), (277, 'Polly Piano')


select * 
from artist
order by name asc
limit 5;


-- Employee Table

select first_name, last_name
from employee
where city = 'Calgary';


select *
from employee
where reports_to = 2;


select *
from employee
where city = 'Lethbridge';



-- Invoice Table

select count(*)
from invoice
where billing_country = 'USA';


select 
max(total)
from invoice;

select 
min(total)
from invoice;


select *
from invoice
where total > 5;

select sum (total)
from invoice;



-- Join queries

select *
from invoice i
join invoice_line il
on i.invoice_id = il.invoice_id
where unit_price > 0.99;


select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c
on i.customer_id = c.customer_id;


select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as employee_first_name, e.last_name as employee_last_name
from customer c
join employee e
on c.support_rep_id = e.employee_id;


select ab.title, ar.name
from artist ar
join album ab
on ar.artist_id = ab.artist_id;



-- Extra Credit

select *
from artist
order by name desc
offset 5
limit 10;


select *
from artist
where name like 'Black%';


select *
from artist
where name like '%Black%';


select max(birth_date)
from employee;


select min(birth_date)
from employee;

select count(*)
from invoice
where billing_state in ('CA', 'TX', 'AZ');

select avg(total)
from invoice;


select plt.track_id
from playlist_track plt
join playlist pl
on pl.playlist_id = plt.playlist_id
where pl.name = 'Music';

select t.name
from track t
join playlist_track plt
on plt.track_id = t.track_id
where plt.playlist_id = 5;


select t.name as track_name, pl.name as playlist_name
from track t
join playlist_track plt
on t.track_id = plt.track_id
join playlist pl
on pl.playlist_id = plt.playlist_id;

select t.name, al.title
from track t
join album al
on t.album_id = al.album_id
join genre g
on t.genre_id = g.genre_id
where g.name = 'Alternative & Punk';


--------



