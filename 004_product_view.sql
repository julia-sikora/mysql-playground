CREATE VIEW product_list AS
SELECT p.name AS product_name, p.price, c.name AS color_name
FROM product p
         JOIN color c on c.id = p.color_id;

SELECT *
FROM product_list
