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

--HOMEWORK 6

--1-film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

--SELECT AVG(rental_rate) FROM film;

--2-film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

--SELECT COUNT(*) FROM film
--WHERE title LIKE 'C%';

--3-film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?

--SELECT MAX(length) FROM film
--WHERE rental_rate=0.99;


--4-film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

--SELECT COUNT(DISTINCT replacement_cost) FROM film
--WHERE length>150;

--HOMEWORK 7

--1-film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
--SELECT rating, COUNT(*)  FROM film
--GROUP BY rating;

--2-film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
--SELECT replacement_cost, COUNT(*)  FROM film
--GROUP BY replacement_cost
--HAVING COUNT(*) > 50;

--3-customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
--SELECT store_id, COUNT(*) FROM customer
--GROUP BY store_id;

--4-city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
--SELECT country_id, COUNT(*) AS ct FROM city
--GROUP BY country_id
--ORDER BY ct DESC 
--LIMIT 1;

--HOMEWORK 8

--1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

--CREATE TABLE employee (
--id SERIAL PRIMARY KEY,
--name VARCHAR(50),
--birthday DATE,
--email VARCHAR(100)
--)

--2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

--insert into employee (id, name, birthday, email) values (1, 'Amitie', '1920-09-20 13:10:56', 'acray0@mashable.com');
--insert into employee (id, name, birthday, email) values (2, 'Elvis', '2019-11-17 23:47:22', 'egooke1@answers.com');
--insert into employee (id, name, birthday, email) values (3, 'Josias', '1971-10-07 12:01:21', 'jlillford2@techcrunch.com');
--insert into employee (id, name, birthday, email) values (4, 'Sherm', '1953-02-10 22:42:37', 'shousden3@cocolog-nifty.com');
--insert into employee (id, name, birthday, email) values (5, 'Glenden', '1971-09-27 09:00:39', 'gmufford4@webs.com');
--....


--3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

--UPDATE employee
--SET name = 'Işıl',
--	birthday = '2005-10-10',
--	email = 'isil@gmail.com'	
--WHERE id = 2;


--UPDATE employee
--SET id = 63,
--	birthday = '2005-10-10',
--	email = 'kalilinux@gmail.com'	
--WHERE name = 'Kali';

--UPDATE employee
--SET id = 52,
--    name='Tulley',
--	birthday = '2005-10-10'	
--WHERE email = 'ptulley5@ning.com';



--4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--DELETE FROM employee
--WHERE id=30;

--DELETE FROM employee
--WHERE name='Tris';

--DELETE FROM employee
--WHERE email='drenonh@4shared.com';