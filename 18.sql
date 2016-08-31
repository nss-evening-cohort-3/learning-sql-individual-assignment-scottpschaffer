select E.EmployeeId, E.FirstName, E.LastName,Count(I.Total) as Sales_Num, ROUND(SUM(I.Total), 2) as "Total Sales"

from employee as E 

join Customer as C on E.EmployeeId == C.SupportRepId

join Invoice as I on C.CustomerId == I.CustomerId

where E.title like '%Agent'

Group by E.EmployeeId