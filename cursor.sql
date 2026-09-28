DO $$
DECLARE
    car_rec RECORD;
    car_cursor CURSOR FOR
        SELECT c.model, c.year, r.start_date, r.end_date
        FROM rent r
        JOIN car c ON r.car_id = c.car_id
        WHERE r.customer_id = 3;
BEGIN
    OPEN car_cursor;
    LOOP
        FETCH car_cursor INTO car_rec;
        EXIT WHEN NOT FOUND;
        RAISE NOTICE 'Model: %, Year: %, Rented From: % To: %',
            car_rec.model, car_rec.year, car_rec.start_date, car_rec.end_date;
    END LOOP;
    CLOSE car_cursor;
END $$;



