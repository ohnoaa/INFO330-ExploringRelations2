-- Which sales agent made the most in sales in 2010?
SELECT employees.EmployeeId, employees.FirstName, employees.LastName, SUM(invoices.Total) AS 'Sales'
FROM employees
JOIN customers
		ON employees.EmployeeId = customers.SupportRepId
JOIN invoices
		ON customers.CustomerId = invoices.CustomerId
JOIN invoice_items
		ON invoices.InvoiceId = invoice_items.InvoiceId
WHERE invoices.InvoiceDate 
	BETWEEN '2010-01-01 00:00:00'
	AND '2010-12-31 11:59:59'
GROUP BY employees.EmployeeId
ORDER BY Sales DESC
LIMIT 1;