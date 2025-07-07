USE hw_3db;

SELECT *
FROM (
  SELECT order_id, AVG(quantity) AS avg_quantity
  FROM order_details
  WHERE quantity > 10
  GROUP BY order_id
) AS temp_table;

/*
Напишіть SQL запит, вкладений в операторі FROM, який буде обирати рядки з умовою quantity>10 
з таблиці order_details. Для отриманих даних знайдіть середнє значення поля quantity — групувати слід за order_id.
*/