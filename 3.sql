select c.FirstName || ' ' || c.LastName as FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry  from customer as c
join invoice as i on c.CustomerId == i.CustomerId
where c.Country = 'Brazil'