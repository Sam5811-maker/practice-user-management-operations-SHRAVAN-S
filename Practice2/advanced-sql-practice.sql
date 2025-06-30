CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john@example.com'),
(2, 'Jane', 'Smith', 'jane@example.com'),
(3, 'Alice', 'Smith', 'alice@example.com'),
(4, 'Bob', 'Brown', 'bob@example.com');

INSERT INTO orders (id, customer_id, order_date, total_amount) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 1, '2023-02-01', 150.00),
(3, 2, '2023-01-01', 200.00),
(4, 3, '2023-04-01', 250.00),
(5, 3, '2023-04-01', 300.00),
(6, NULL, '2023-04-01', 100.00);


-- Task 1: Use JOIN statements to combine data from multiple tables
SELECT customers.first_name, customers.last_name, SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.id;

-- Task 2: Write GROUP BY queries with aggregate functions like SUM and COUNT
SELECT customer_id, COUNT(*) AS total_orders, SUM(total_amount) AS total_Spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent;

-- Task 3: Apply WHERE and HAVING clauses to filter data
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE customer_id IS NOT NULL
GROUP BY customer_id
HAVING total_spent >= 100;

-- Task 4: Practice using SubQueries to create dynamic filters
SELECT 
    customer_id, 
    MAX(order_date) AS last_order_date,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > (
    SELECT AVG(order_count)
    FROM (
        SELECT customer_id, COUNT(*) AS order_count
        FROM orders
        WHERE customer_id IS NOT NULL
        GROUP BY customer_id
    ) AS sub
);


select * from customers;
select * from orders;
