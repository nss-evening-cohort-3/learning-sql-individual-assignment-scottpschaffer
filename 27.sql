SELECT MAX(Count1) AS "Count", Name1 AS "Name" FROM

     (SELECT COUNT(IL.TrackId) AS Count1, MT.Name AS Name1 FROM InvoiceLine AS IL

     JOIN Track AS T ON IL.TrackId == T.TrackId

     JOIN MediaType AS MT ON T.MediaTypeId == MT.MediaTypeId

     GROUP BY IL.trackId)