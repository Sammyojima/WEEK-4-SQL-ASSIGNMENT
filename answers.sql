/* =====================================================
   Assignment: Advanced SQL Queries and Aggregations
   Student: Samuel Ojima Idakwo
   Course: Database Management / SQL
   Date: August 2025
   Description: This file contains solutions to SQL queries involving
   aggregation, grouping, ordering, and conditional logic.
   Each query is well-commented for clarity.
===================================================== */

-- Q1: Total payment amount for each date (latest 5)
-- Task: Show the sum of payment amounts grouped by date,
--       sorted by most recent date, limited to 5 results.
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- =====================================
-- Q2: Average credit limit of each customer
-- Task: For each customer, display their name, country,
--       and the average credit limit. 
-- Note: Group by both name and country so each customer is unique.
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- =====================================
-- Q3: Total price of products ordered
-- Task: Calculate total price = quantityOrdered * priceEach.
--       Group results by product code and quantity ordered.
--       This shows how much each batch of ordered products costs.
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- =====================================
-- Q4: Highest payment amount per check number
-- Task: Find the maximum payment value for each check number.
--       This ensures we only see the largest payment linked to each check.
SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
