-- Find tracks (id, name and composer) that are part of a line in an invoice.

-- THIS IS FOR INVOICES (MIGHT CHANGE)

SELECT tracks.TrackId, tracks.Name, tracks.Composer, invoices.*
FROM tracks
JOIN invoice_items
		ON tracks.TrackId = invoice_items.TrackId
JOIN invoices
		ON invoice_items.InvoiceId = invoices.InvoiceId;