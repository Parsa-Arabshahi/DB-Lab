CREATE OR REPLACE FUNCTION update_car_availability_after_rent()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE car
    SET availability = FALSE
    WHERE car_id = NEW.car_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_car_availability
AFTER INSERT ON rent
FOR EACH ROW
EXECUTE FUNCTION update_car_availability_after_rent();


