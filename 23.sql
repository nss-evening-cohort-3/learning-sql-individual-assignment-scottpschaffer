-- Provide a Query that shows the total sales per country

SELECT C.Country, ROUND(SUM(I.Total), 2) 

FROM Customer as C

join Invoice as I on C.CustomerId == I.CustomerId

group by C.Country

-- Which Country's customers spent the most

SELECT Cntry, MAX(Tot) from (select C.Country as Cntry, ROUND(SUM(I.Total), 2) as Tot
         FROM Customer as C
         join Invoice as I on C.CustomerId == I.CustomerId
         group by C.Country)