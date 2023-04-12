-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName, employees.LastName, invoices.*
FROM  invoices 
JOIN customers
ON invoices.CustomerId = customers.CustomerId
JOIN employees
ON customers.SupportRepId = employees.EmployeeId;