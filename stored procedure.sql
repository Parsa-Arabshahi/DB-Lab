CREATE OR REPLACE PROCEDURE assign_insurance_to_car(
    p_car_id INTEGER,
    p_insurance_id INTEGER,
    p_start_date DATE,
    p_end_date DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO carinsurance (car_id, insurance_id, start_date, end_date)
    VALUES (p_car_id, p_insurance_id, p_start_date, p_end_date);
END;
$$;


CALL assign_insurance_to_car(5, 3, '2025-06-10', '2026-06-10');


