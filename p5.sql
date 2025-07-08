USE hw_3db;

DELIMITER //

DROP FUNCTION IF EXISTS Task5;

CREATE FUNCTION Task5(
    input_quantity FLOAT,
    input_number FLOAT
)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    IF input_number = 0 THEN
        RETURN NULL;
    END IF;
    RETURN input_quantity / input_number;
END //

DELIMITER ;

SELECT
    od.*,
    Task5(od.quantity, 10.0) AS calculated_value
FROM
    order_details od;