select count(*), ROUND(SUM(Total), 2) as "Total Sales" from invoice where (InvoiceDate > '2008-12-31 00:00:00') and (InvoiceDate < '2010-01-01 00:00:00');
select count(*), ROUND(SUM(Total), 2) as "Total Sales" from invoice where (InvoiceDate > '2010-12-31 00:00:00') and (InvoiceDate < '2012-01-01 00:00:00');


