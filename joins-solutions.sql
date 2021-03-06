```SQL

--1. Get all customers and their addresses.
SELECT * FROM "addresses"
JOIN "customers"
ON "customers"."id"="addresses"."customer_id";


--2. Get all orders and their line items (orders, quantity, and product).
SELECT * FROM "line_items"
JOIN "orders"
ON "orders"."id"="line_items"."order_id"
JOIN "products"
ON "products"."id"="line_items"."product_id";

--3. Which warehouses have cheetos?
SELECT * FROM "warehouse_product"
JOIN "warehouse"
ON "warehouse"."id"="warehouse_product"."warehouse_id"
JOIN "products"
ON "products"."id"="warehouse_product"."product_id"
WHERE "product_id"=5;

--4. Which warehouses have diet pepsi?
SELECT * FROM "warehouse_product"
JOIN "warehouse"
ON "warehouse"."id"="warehouse_product"."warehouse_id"
JOIN "products"
ON "products"."id"="warehouse_product"."product_id"
WHERE "product_id"=6;

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in the results.
SELECT "customers".*, count(*) FROM "customers"
JOIN "addresses"
ON "customers"."id"="addresses"."customer_id"
JOIN "orders"
ON "addresses"."id"="orders"."address_id"
GROUP BY "customers"."id";

--6. How many customers do we have?
SELECT count(*) FROM "customers";

--7. How many products do we carry?
SELECT count(*) FROM "products";

--8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("on_hand") FROM "warehouse_product"
JOIN "products"
ON "products"."id"="warehouse_product"."product_id"
WHERE "product_id"=6;

--9. How much was the total cost for each order?

```
