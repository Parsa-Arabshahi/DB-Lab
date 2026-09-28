CREATE OR REPLACE FUNCTION get_total_rent_cost_by_customer(cid INTEGER)
RETURNS NUMERIC AS $$
DECLARE
    total_cost NUMERIC := 0;
BEGIN
    SELECT SUM(p.cost) INTO total_cost
    FROM rent r
    JOIN parking p ON r.parking_id = p.parking_id
    WHERE r.customer_id = cid;

    RETURN COALESCE(total_cost, 0);
END;
$$ LANGUAGE plpgsql;

SELECT get_total_rent_cost_by_customer(2);

