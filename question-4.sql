-- Which sales agent made the most in sales in 2010?
SELECT employees.EmployeeId, employees.FirstName, employees.LastName, SUM(invoices.Total) AS 'Sales'
FROM employees
JOIN customers
		ON employees.EmployeeId = customers.SupportRepId
JOIN invoices
		ON customers.CustomerId = invoices.CustomerId
WHERE invoices.InvoiceDate 
	BETWEEN '2010-01-01'
	AND '2010-12-31'
GROUP BY employees.EmployeeId
ORDER BY Sales DESC
LIMIT 1;