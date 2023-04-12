-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT customers.FirstName, customers.LastName, invoices.InvoiceId, invoices.BillingCountry
FROM customers, invoices
WHERE customers.CustomerId = invoices.CustomerId
AND customers.Country = 'Brazil';