select c.FirstName, c.LastName, i.* from customer as c
join invoice as i on c.customerid == i.customerid
where c.country = 'Brazil'