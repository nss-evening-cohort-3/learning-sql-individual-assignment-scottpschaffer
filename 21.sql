select S, MAX(T) from (select E.FirstName || " " || E.LastName as S, ROUND(SUM(Total), 2) as T from Invoice as I

join Customer as C on C.CustomerId == I.CustomerId

join Employee as E on E.EmployeeId == C.SupportRepId

group by C.SupportRepId)