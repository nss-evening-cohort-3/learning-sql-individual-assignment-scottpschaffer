select i.Total, c.FirstName || ' ' || c.LastName as CustomerName, c.Country, e.FirstName || ' ' || e.LastName as SalesAgentName from invoice i
join customer c on i.CustomerId == c.CustomerId
join employee e on c.SupportRepId == e.EmployeeId