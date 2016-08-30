select IL.InvoiceLineId, IL.InvoiceId, IL.TrackId, T.Name, T.Composer, IL.UnitPrice, IL.Quantity from InvoiceLine as IL
join Track as T on IL.TrackId == T.TrackId