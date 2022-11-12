--часть 1

--задание 1 произвести выборку всех данных из таблицы продукты
select * from zadanie_3.products;

--задание 2 произвести выборку данных из столбца prodname products

select prod_name from zadanie_3.products;

--задание 3 произвести выборку данных из столбцов prodid prodname prodprice
 
select prod_id, prod_name, prod_price from zadanie_3.products;

--задание 4 произвести выборку уникальных данных из столбца vendid таблицы products
 
select distinct vend_id from zadanie_3.products;

--задание 5 выборка первых 5 строк из столбца prodname из тбалицы products
 
select prod_name from zadanie_3.products limit(5);

--задание 6 выборка первых 5 строк из столбца prodname из тбалицы products начиная с 3 позиции
 
select prod_name from zadanie_3.products limit(5) offset(2);

--задание 7 выборка всех строк из столба prodname талицы products начиная с 5
 
select prod_name from zadanie_3.products offset(4);

--задание 8 выборка из столбца prodname таблицы products и осуществить сортировку по возрастанию

select prod_name from zadanie_3.products order by prod_name asc;

/*задание 9 выборка из столбцов код продукта, prod_name, prod_price из таблицы продукты и осуществить сортировку
 по возрастанию по имени и цене*/

select prod_id,prod_name,prod_price from zadanie_3.products order by prod_name, prod_price asc ; 

--часть 2
--задача 10 произвестви выборку столбцов из prod_code prod_price prod_name из таблицы продукта по убыванию цены
select prod_id, prod_name, prod_price from products order by prod_price desc;

--задача 11 выборка код продукта наименование продукта цена продукта из таблицы products
--убывание по цене возрастание по имени
select prod_id, prod_name, prod_code from products order by prod_price desc, prod_name asc;

--задача 12 таблица vendors столбцы vend_name vend_country выводиться в одном поле столбцу выбрки присвоить имя Наименование
select concat (vend_name,vend_country) as "Наименование" from vendors;
select vend_name || vend_country as "Наименование" from vendors;

--задача 13 выборка vendors vend_name vend_country в одно поле имя "наименование(место нахождения)"
select concat (vend_name,vend_country) as "Наименование(место нахождения)" from vendors;
select vend_name || vend_country as "Наименование(место нахождения)" from vendors;

--задача 14 выборка prod_id quantity item_price таблицы orderitems
select prod_id, quantity, item_price from orderitems;

--задача 15 выборка prod_id quantity item_price таблицы orderitems расчитать итоговую цену умножив цену за штуку
--на заказанное количество каждого товара. присвоить имя "expanded_price";
select prod_id, item_price * quantity as "expanded_price" from orderitems;

--задание 16 выборка vendors vend_name vend_country в одно поле имя "Наименование" В отдельном столбце с названием "Кол-во символов"
--вывести кол-во символов строке, столбце "Наименование"
select "Наименование", CHAR_LENGTH("Наименование") as "Кол-во символов" from (
select vend_name || ' (' || vend_country || ')' as "Наименование" from vendors
);

--задание 17 выборка product_notes столбец note_text в верхем регистре
select upper(note_text) from product_notes;

--задание 18 Провести выборку данных из таблицы products столбец prod_id нижний регистр
select lower(prod_id) from products;

--задание 19 выборка данных из таблицы vendors, vend_name, vend_country выводиться в одном поле имя "Наименование(место нахождения)" 
--в отдельном столбце "регистр" вывести информацию vend_name, vend_country в одном поле в верхем регистре
select concat (vend_name, vend_country) as "Наименование(место нахождения)", upper(concat(vend_name,vend_country)) as "Регистр" from vendors;

--задание 20 выборка prod_desc таблицы products а так же столбец "Результат" в котором данные prod_desc убрав пробелы в начале строки;
select prod_desc, ltrim(prod_desc) as "Результат" from products;
select prod_desc, ltrim(prod_desc,' ')from(prod_desc), from products
--задание 21
select prod_desc, rtrim(prod_desc) as "Результат" from products;
select prod_desc, rtrim(prod_desc,' ')from(prod_desc), from products;
--Часть 2

--задача 22
select prod_desc, ltrim(prod_desc,'Т') from products;

--задача 23
select prod_desc, ltrim(prod_desc,'Jet') as "Результат" from products;
select prod_desc, ltrim(prod_desc,'J,e,t') as "Результат" from products;

--задача 24
select prod_desc, ltrim(prod_desc,'Jet, t, S, .') as "Результат" from products;
select prod_desc, ltrim(prod_desc,'J,e,t, t, S, .') as "Результат" from products;

--задача 25
select prod_desc, rtrim(prod_desc,'e') as "Результат" from products;

--задача 26
select prod_desc, rtrim(prod_desc,'ook') as "Результат" from products;

--задача 27
select prod_desc, rtrim(prod_desc,'e ,l ,k ,g') as "Результат" from products;

--задача 28
select prod_id, vend_id, prod_name, prod_price, overlay(prod_desc placing 'YYY' from 4 for 6) 
as "Результат" from products;

--задача 29
select vend_city, position('A' in vend_city) as "Позиция" from vendors;

--задача 30
select vend_address, position('Srt' in vend_address) as "Позиция" from vendors;

--задача 31
select substring(note_text from 13 for 22) as "Результат" from product_notes;
select note_text, substring(note_text from 12 for 22) as "Результат" from product_notes;

--задача 32
select substring(note_text from 1 for 22) as "Результат" from product_notes;

--задача 33 
select left(note_text, -22) as "Результат" from product_notes;
select note_text, left(note_text, -22) as "Результат" from product_notes;

--задача 34
select right(note_text,14) as "Результат" from product_notes;

--задача 35
select left(note_text, -17) as "Результат" from product_notes;

--задача 36
select vend_name, repeat(vend_name,3) as "Повтор" from vendors;

--задача 37
select vend_name, reverse(vend_name) as "Ревёрс" from vendors;

--задача 38
select cust_email, split_part(cust_email, '@', 1) as "Часть первая", split_part(cust_email, '@', 2) as "Часть вторая" from customers;

--задача 39
select cust_name, split_part(cust_name,' ', 1) as "Часть первая", split_part(cust_name, ' ', 2) as "Часть вторая" from customers;

--задача 40
select age('2022-10-23','1812-08-03');

--задача 41
select order_date, age(order_date) as "Интервал" from orders;

--задача 42
select current_date();
select now;

--задача 43
select CURRENT_TIME;
select now;

--часть 3
--задание 44
select now;

--задание 45
select order_date, date_part('year', order_date) as "Год" from orders;

--задание 46
select order_date, date_part('month', order_date) as "Месяц" from orders;

--задание 47
select order_date, date_part('date', order_date) as "День" from orders;

--задание 48
select date_part('hours', timestamp'2020-06-30 02:36:24');

--задание 49
select date_part('minutes', timestamp'2020-06-30 02:36:24');

--задание 50
select date_part('seconds', timestamp'2020-06-30 02:36:24');

--задание 51
select 
date_part('year', timestamp'2021-12-31 12:48:17') as "Год",
date_part('month', timestamp'2021-12-31 12:48:17') as "Месяц",
date_part('day', timestamp'2021-12-31 12:48:17') as "День",
date_part('hour', timestamp'2021-12-31 12:48:17') as "Часы",
date_part('minutes', timestamp'2021-12-31 12:48:17') as "Минуты",
date_part('seconds', timestamp'2021-12-31 12:48:17') as "Секунды";

--задание 52
select order_date, age(order_date) as "Интервал", date_part('year' , age(order_date)) as "Года"  from orders;

--задание 53
select order_date, age(order_date) as "Интервал", date_part('month' , age(order_date)) as "Месяца"  from orders;

--задание 54
select order_date, age(order_date) as "Интервал", date_part('day' , age(order_date)) as "Дни"  from orders;

--задание 55
select age(timestamp'1856-04-25 09:56:34') as "Интервал", 
date_part('hours', age(timestamp'1856-04-25 09:56:34')) as "Часы",
date_part('minutes', age(timestamp'1856-04-25 09:56:34')) as "Минуты",
date_part('seconds', age(timestamp'1856-04-25 09:56:34')) as "Секунды";

--задание 56
select order_date, date_trunc('year' , order_date) as "Результат" from orders;

--задание 57
select order_date, date_trunc('month' , order_date) as "Результат" from orders;

--задание 58
select order_date, date_trunc('day' , order_date) as "Результат" from orders;

--задание 59
select date_trunc('hour' , timestamp'2015-05-26 16:36:42.258') as "Результат";

--задание 60
select date_trunc('minutes' , timestamp'2015-05-26 16:36:42.258') as "Результат";

--задание 61
select date_trunc('seconds' , timestamp'2015-05-26 16:36:42.258') as "Результат";

--задание 62
select concat(note_id,'/', prod_id,'/', note_date) as "Результат" from productnotes;
select concat_ws('/', note_id, prod_id, note_date) as "Результат" from productnotes;