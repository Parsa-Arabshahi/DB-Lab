

SELECT c.car_id, c.model, COUNT(r.rent_id) AS rent_count
FROM car c
JOIN rent r ON c.car_id = r.car_id
GROUP BY c.car_id, c.model
ORDER BY rent_count DESC
LIMIT 5;

SELECT customer_id, name
FROM customer
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM rent
);


SELECT c.car_id, c.model
FROM car c
WHERE c.availability = TRUE
  AND c.car_id NOT IN (
    SELECT r.car_id
    FROM rent r
    WHERE r.start_date <= '2025-07-01'
      AND r.end_date >= '2025-06-20'
  );

SELECT r.rent_id, r.start_date, r.end_date, r.payment_status,
       c.model, p.cost AS parking_cost, i.type AS insurance_type
FROM rent r
JOIN car c ON r.car_id = c.car_id
JOIN parking p ON r.parking_id = p.parking_id
LEFT JOIN insurance i ON r.insurance_id = i.insurance_id
WHERE r.customer_id = 1
ORDER BY r.start_date DESC;

SELECT r.rent_id, c.model, r.start_date, r.end_date
FROM rent r
JOIN car c ON r.car_id = c.car_id
WHERE r.insurance_id IS NULL;


SELECT s.type AS service_type, COUNT(*) AS request_count
FROM service s
JOIN servicerepairman rs ON s.service_id = rs.service_id
GROUP BY s.type
ORDER BY request_count DESC
LIMIT 5;




