-- Order Volume by Month

SELECT
  EXTRACT(DATE
  FROM
    OrderDate) AS Day,
  COUNT(OrderId) AS Orders,
  SUM(Freight) AS Freight_Total
FROM
  techassessment.orders
GROUP BY
  Day
ORDER BY
  Day;




-- Total Revenues over Time

SELECT
  EXTRACT(DATE
  FROM
    orders.OrderDate) AS Day,
  order_details.ProductID AS Product,
  SUM(order_details.UnitPrice * order_details.Quantity) AS Revenue
FROM
  techassessment.orders AS orders
INNER JOIN
  techassessment.order_details AS order_details
ON
  order_details.OrderID = orders.OrderID
GROUP BY
  Day,
  Product
ORDER BY
  Day;




-- Quartly Revenue by Sales Representative

WITH
  temptable AS (
  SELECT
    EXTRACT(DATE
    FROM
      orders.OrderDate) AS Day,
    orders.EmployeeID,
    ROUND(SUM(order_details.UnitPrice * order_details.Quantity),2) AS Revenue
  FROM
    techassessment.orders AS orders
  JOIN
    techassessment.order_details AS order_details
  ON
    order_details.OrderID = orders.OrderID
  GROUP BY
    Day,
    orders.EmployeeID)
SELECT
  Day,
  temptable.EmployeeID,
  employees.FirstName,
  employees.LastName,
  Revenue
FROM
  temptable
JOIN
  techassessment.employees AS employees
ON
  employees.EmployeeID = temptable.EmployeeID
WHERE
  employees.Title = "Sales Representative"
ORDER BY
  Day,
  EmployeeID;




-- Top 5 Customers

SELECT * FROM (WITH
  temptable AS (
  SELECT
    DATE_TRUNC(EXTRACT(DATE FROM orders.OrderDate), QUARTER) AS Quarter,
    orders.CustomerID,
    ROUND(SUM(order_details.UnitPrice * order_details.Quantity),2) AS Total
  FROM
    techassessment.orders AS orders
  JOIN
    techassessment.order_details AS order_details
  ON
    order_details.OrderID = orders.OrderID
  GROUP BY
    Quarter,
    orders.CustomerID)
SELECT
  temptable.Quarter,
  temptable.CustomerID,
  customers.CompanyName,
  customers.ContactName,
  Total,
  row_number() over(partition by temptable.Quarter order by Total desc) as rn
FROM
  temptable
JOIN
  techassessment.customer_list AS customers
ON
  customers.CustomerID = temptable.CustomerID
ORDER BY
  Quarter)
WHERE rn <= 5;




-- New Metric (Geo-Based) Revenues by Country

SELECT
  EXTRACT(DATE FROM orders.OrderDate) AS Period,
  orders.ShipCountry,
  ROUND(SUM(order_details.UnitPrice * order_details.Quantity),2) AS Revenue,
  ROUND(SUM(orders.Freight)) as Total_Freight

FROM
  techassessment.orders AS orders
JOIN
  techassessment.order_details AS order_details
ON
  order_details.OrderID = orders.OrderID
GROUP BY
  orders.OrderDate,
  orders.ShipCountry
ORDER BY
  OrderDate
;