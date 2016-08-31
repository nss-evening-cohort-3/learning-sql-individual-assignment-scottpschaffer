select E.FirstName || " " || E.LastName as "Sales Agent", count(*) from Customer as C 

join Employee as E on C.SupportRepId == E.EmployeeId

group by SupportRepId