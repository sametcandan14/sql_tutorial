--HOMEWORK 1

--1 film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.

--1 SELECT title, description FROM film;


--2- film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.

--2 SELECT * FROM film
-- WHERE length>60 AND length >75;


--3 film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.

--3 SELECT * FROM film
-- WHERE rental_rate=0.99 AND replacement_cost=12.99 OR replacement_cost=28.99;


-- 4 customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?

--4 SELECT last_name FROM customer
-- WHERE first_name='Mary';


--5 film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.

--5 SELECT * FROM film
-- WHERE NOT length>50 AND NOT (rental_rate=2.99 OR rental_rate=4.99);


--HOMEWORK 2

--1 SELECT * FROM film
-- WHERE replacement_cost BETWEEN 12.99 AND 16.99;

--2 SELECT * FROM actor
-- WHERE first_name IN ('Penelope', 'Nick', 'Ed');

--3 SELECT * FROM film
-- WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);


--HOMEWORK 3

--1 SELECT * FROM country
-- WHERE country LIKE ('A%a');

--2 SELECT * FROM country
-- WHERE country LIKE ('%_____n');

--3 SELECT * FROM film
-- WHERE title ILIKE ('%t%t%t%t%');

--4 SELECT * FROM film
-- WHERE title LIKE ('C%')  AND length>90 AND rental_rate= 2.99;


--HOMEWORK 4

--1 SELECT DISTINCT replacement_cost FROM film;

--2 SELECT COUNT(DISTINCT replacement_cost) FROM film;

--3 SELECT COUNT(*) FROM film
-- WHERE title LIKE ('T%') AND rating = 'G';

--4 SELECT COUNT(*) FROM country
-- WHERE country LIKE ('_____');

--5 SELECT COUNT(*) FROM city
-- WHERE city ILIKE('%R');


--HOMEWORK 5

--1-film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.

--SELECT * FROM film
--WHERE title LIKE ('%n')
--ORDER BY length DESC
--LIMIT 5;

--2-film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

--SELECT * FROM film
--WHERE title LIKE ('%n')
--ORDER BY length ASC
--LIMIT 5
--OFFSET 5;


--3-customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

--SELECT * FROM customer
--WHERE store_id=1
--ORDER BY last_name DESC
--LIMIT 4;