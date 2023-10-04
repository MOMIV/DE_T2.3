﻿# DE_T2.3
Задание 2.3
Анализ данных о заказах и клиентах

У вас есть база данных для интернет-магазина, которая включает следующие таблицы:

1. Customers — информация о клиентах:

• CustomerID (int, PK) — уникальный идентификатор клиента.

• FirstName (varchar) — имя клиента.

• LastName (varchar) — фамилия клиента.

• Email (varchar) — адрес электронной почты клиента.

2. Orders — информация о заказах:

• OrderID (int, PK) — уникальный идентификатор заказа.

• CustomerID (int) — идентификатор клиента, совершившего заказ.

• OrderDate (datetime) — дата и время создания заказа.

• TotalAmount (decimal) — общая сумма заказа.

3. OrderDetails — информация о деталях заказов:

• OrderDetailID (int, PK) — уникальный идентификатор детали заказа.

• OrderID (int) — идентификатор заказа.

• ProductID (int) — идентификатор продукта в заказе.

• Quantity (int) — количество продуктов в заказе.

• UnitPrice (decimal) — цена за единицу продукта.

Ваша задача:

Напишите SQL-запрос, который выполняет следующие действия:

1. Возвращает список клиентов (имя и фамилия) с наибольшей общей суммой заказов.

2. Для каждого клиента из пункта 1 выводит список его заказов (номер заказа и общая сумма) в порядке убывания общей суммы заказов.

3. Выводит только тех клиентов, у которых общая сумма заказов превышает среднюю общую сумму заказов всех клиентов.

Важно использовать подзапросы, агрегатные функции и объединения таблиц, чтобы выполнить это задание. Оптимизируйте запрос, где это возможно.

Предоставьте SQL-запрос, который выполняет описанные действия.

Решение:

Для создания БД необходимо запустить docker-compose.

Результаты выполнения SQL-запросов:

![Image alt](https://github.com/MOMIV/DE_T2.3/raw/main/pic/1.png)

![Image alt](https://github.com/MOMIV/DE_T2.3/raw/main/pic/2.png)

![Image alt](https://github.com/MOMIV/DE_T2.3/raw/main/pic/3.png)
