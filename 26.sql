SELECT IL.InvoiceId, COUNT(IL.trackId) AS Count, IL.TrackId, T.Composer, T.Name FROM invoiceline AS IL
    
     JOIN Invoice AS I ON IL.InvoiceId == I.InvoiceId
     
     JOIN Track AS T ON IL.TrackId == T.TrackId

     WHERE T.Composer IS NOT NULL

     GROUP BY  IL.TrackId, T.Composer ORDER BY Count DESC LIMIT 3