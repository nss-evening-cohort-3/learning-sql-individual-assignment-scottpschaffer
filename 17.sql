select i.*, count(il.invoiceid) as "Invoice Line Item Count" from invoiceline as il

 join invoice as i on il.invoiceid == i.invoiceid

group by il.invoiceId