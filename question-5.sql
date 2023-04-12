-- What was the most purchased track of 2013?
SELECT tracks.Name, SUM(invoice_items.Quantity) AS 'Number of Purchases'
FROM tracks
JOIN invoice_items
		ON tracks.TrackId = invoice_items.TrackId
JOIN invoices
		ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE invoices.InvoiceDate 
	BETWEEN '2013-01-01 00:00:00'
	AND '2013-12-31 11:59:59'
GROUP BY tracks.TrackId;