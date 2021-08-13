CREATE TABLE artists (
  id SERIAL PRIMARY KEY,title VARCHAR(50), artist_id INTEGER, album_id INTEGER
 );
 
 INSERT INTO artists ( title, artist_id, album_id)
 VALUES ('Remi Wolf', 22 , 34), ('Lewis Del Mar', 33, 78),('Cautious Clay',57,78);

SELECT *
FROM artists
ORDER BY title ASC


SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';











SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total <5;
SELECT SUM(total) FROM invoice;

SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

