SELECT MAX(NO1) AS "Number One Track", IId AS InvoiceId, TI AS "Track ID", Co AS Composer, N AS "Track Name" FROM 
    
     (SELECT IL.InvoiceId AS "IId", COUNT(IL.trackId) AS NO1, IL.TrackId AS TI, T.Composer AS Co, T.Name AS N FROM invoiceline AS IL
    
     JOIN Invoice AS I ON IL.InvoiceId == I.InvoiceId
     
     JOIN Track AS T ON IL.TrackId == T.TrackId
     
     WHERE I.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
    
     GROUP BY IL.TrackId)