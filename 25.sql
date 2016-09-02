SELECT IL.InvoiceId AS "IId", COUNT(IL.trackId) AS NO1, IL.TrackId AS TI, T.Composer AS Co, T.Name AS N FROM invoiceline AS IL
    
     JOIN Invoice AS I ON IL.InvoiceId == I.InvoiceId
     
     JOIN Track AS T ON IL.TrackId == T.TrackId

     GROUP BY IL.TrackId ORDER BY NO1 DESC LIMIT 5