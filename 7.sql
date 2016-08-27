select e.FirstName, e.LastName, i.* from employee e
join Customer c on e.employeeId=c.SupportRepId
join invoice i on c.customerId = i.customerId
where e.Title like '%Agent' order by e.LastName