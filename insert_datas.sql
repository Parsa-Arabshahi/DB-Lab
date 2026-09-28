
-- Insert data into company
INSERT INTO company (name, website) VALUES
('DriveEasy', 'www.driveeasy.com'),
('AutoRent', 'www.autorent.com'),
('QuickWheels', 'www.quickwheels.com'),
('CityRide', 'www.cityride.com'),
('EcoMobility', 'www.ecomobility.com'),
('UrbanDrive', 'www.urbandrive.com'),
('PrimeCar', 'www.primecar.com'),
('FlexiRide', 'www.flexiride.com'),
('ZoomCar', 'www.zoomcar.com'),
('GreenMotion', 'www.greenmotion.com');

-- Insert data into admin
INSERT INTO admin (name, role, salary, company_id) VALUES
('John Smith', 'CEO', 120000, 1),
('Emily Johnson', 'CFO', 110000, 1),
('Michael Brown', 'Manager', 85000, 2),
('Sarah Davis', 'HR Director', 90000, 3),
('David Wilson', 'Operations', 80000, 4),
('Jennifer Lee', 'Marketing', 75000, 5),
('Robert Taylor', 'IT', 95000, 6),
('Lisa Martinez', 'Finance', 82000, 7),
('James Anderson', 'Sales', 78000, 8),
('Patricia Thomas', 'Customer Service', 70000, 9);

-- Insert data into customer
INSERT INTO customer (name, email, history, company_id) VALUES
('Alex Johnson', 'alex.j@email.com', 'Regular customer since 2020', 1),
('Maria Garcia', 'maria.g@email.com', 'First time renter', 2),
('William Miller', 'william.m@email.com', 'Premium member', 3),
('Emma Davis', 'emma.d@email.com', 'Business rentals', 4),
('Daniel Rodriguez', 'daniel.r@email.com', 'Occasional renter', 5),
('Olivia Wilson', 'olivia.w@email.com', 'Long-term rentals', 6),
('Matthew Martinez', 'matthew.m@email.com', 'Family rentals', 7),
('Sophia Anderson', 'sophia.a@email.com', 'Corporate account', 8),
('Christopher Taylor', 'chris.t@email.com', 'Frequent renter', 9),
('Ava Thomas', 'ava.t@email.com', 'New customer', 10);

-- Insert data into parking
INSERT INTO parking (address, capacity, customer_id, company_id, cost) VALUES
('123 Main St', 50, 1, 1, 15.00),
('456 Oak Ave', 30, 2, 2, 12.50),
('789 Pine Rd', 40, 3, 3, 18.00),
('321 Elm Blvd', 25, 4, 4, 20.00),
('654 Maple Dr', 35, 5, 5, 14.00),
('987 Cedar Ln', 45, 6, 6, 16.50),
('246 Birch St', 20, 7, 7, 22.00),
('135 Walnut Ave', 30, 8, 8, 17.50),
('864 Spruce Rd', 25, 9, 9, 19.00),
('975 Ash Blvd', 40, 10, 10, 13.50);

-- Insert data into insurance
INSERT INTO insurance (type, expire, company_id) VALUES
('Comprehensive', '2023-12-31', 1),
('Collision', '2023-11-30', 2),
('Liability', '2024-01-15', 3),
('Personal Injury', '2023-10-31', 4),
('Theft', '2024-02-28', 5),
('Full Coverage', '2023-09-30', 6),
('Roadside Assistance', '2024-03-15', 7),
('Rental', '2023-12-15', 8),
('Gap', '2024-01-31', 9),
('Umbrella', '2023-11-15', 10);

-- Insert data into car
INSERT INTO car (model, year, availability, parking_id, company_id, customer_id, rating) VALUES
('Toyota Camry', 2022, TRUE, 1, 1, 1, 4),
('Honda Civic', 2021, FALSE, 2, 2, 2, 5),
('Ford Mustang', 2023, TRUE, 3, 3, 3, 4),
('Chevrolet Malibu', 2020, TRUE, 4, 4, 4, 3),
('Nissan Altima', 2022, FALSE, 5, 5, 5, 4),
('Tesla Model 3', 2023, TRUE, 6, 6, 6, 5),
('BMW 3 Series', 2021, TRUE, 7, 7, 7, 4),
('Audi A4', 2022, FALSE, 8, 8, 8, 5),
('Hyundai Sonata', 2020, TRUE, 9, 9, 9, 3),
('Kia Optima', 2021, TRUE, 10, 10, 10, 4);

-- Insert data into carinsurance
INSERT INTO carinsurance (car_id, insurance_id, start_date, end_date) VALUES
(1, 1, '2023-01-01', '2023-12-31'),
(2, 2, '2023-02-01', '2023-11-30'),
(3, 3, '2023-03-01', '2024-01-15'),
(4, 4, '2023-04-01', '2023-10-31'),
(5, 5, '2023-05-01', '2024-02-28'),
(6, 6, '2023-06-01', '2023-09-30'),
(7, 7, '2023-07-01', '2024-03-15'),
(8, 8, '2023-08-01', '2023-12-15'),
(9, 9, '2023-09-01', '2024-01-31'),
(10, 10, '2023-10-01', '2023-11-15');

-- Insert data into rent
INSERT INTO rent (car_id, customer_id, company_id, start_date, end_date, payment_status, insurance_id, parking_id) VALUES
(1, 1, 1, '2023-01-15', '2023-01-20', 'Paid', 1, 1),
(2, 2, 2, '2023-02-10', '2023-02-15', 'Paid', 2, 2),
(3, 3, 3, '2023-03-05', '2023-03-10', 'Pending', 3, 3),
(4, 4, 4, '2023-04-20', '2023-04-25', 'Paid', 4, 4),
(5, 5, 5, '2023-05-15', '2023-05-20', 'Paid', 5, 5),
(6, 6, 6, '2023-06-10', '2023-06-15', 'Pending', 6, 6),
(7, 7, 7, '2023-07-05', '2023-07-10', 'Paid', 7, 7),
(8, 8, 8, '2023-08-20', '2023-08-25', 'Paid', 8, 8),
(9, 9, 9, '2023-09-15', '2023-09-20', 'Pending', 9, 9),
(10, 10, 10, '2023-10-10', '2023-10-15', 'Paid', 10, 10);

-- Insert data into car_update_log
INSERT INTO car_update_log (car_id, old_availability, new_availability, changed_at) VALUES
(1, TRUE, FALSE, '2023-01-14 10:00:00'),
(2, TRUE, FALSE, '2023-02-09 11:30:00'),
(3, FALSE, TRUE, '2023-03-04 09:15:00'),
(4, TRUE, FALSE, '2023-04-19 14:45:00'),
(5, TRUE, FALSE, '2023-05-14 16:20:00'),
(6, FALSE, TRUE, '2023-06-09 10:30:00'),
(7, TRUE, FALSE, '2023-07-04 13:00:00'),
(8, TRUE, FALSE, '2023-08-19 15:45:00'),
(9, FALSE, TRUE, '2023-09-14 11:15:00'),
(10, TRUE, FALSE, '2023-10-09 09:30:00');

-- Insert data into accident
INSERT INTO accident (cost, date, car_id, customer_id, insurance_id) VALUES
(2500.00, '2023-01-18', 1, 1, 1),
(1800.50, '2023-02-12', 2, 2, 2),
(3200.75, '2023-03-07', 3, 3, 3),
(1500.00, '2023-04-22', 4, 4, 4),
(2750.25, '2023-05-17', 5, 5, 5),
(4200.00, '2023-06-12', 6, 6, 6),
(1900.50, '2023-07-07', 7, 7, 7),
(3100.75, '2023-08-22', 8, 8, 8),
(2300.00, '2023-09-17', 9, 9, 9),
(1750.25, '2023-10-12', 10, 10, 10);

-- Insert data into service
INSERT INTO service (name, type, date, company_id, car_id) VALUES
('Oil Change', 'Maintenance', '2023-01-10', 1, 1),
('Tire Rotation', 'Maintenance', '2023-02-05', 2, 2),
('Brake Inspection', 'Safety', '2023-03-15', 3, 3),
('Battery Check', 'Electrical', '2023-04-12', 4, 4),
('Alignment', 'Suspension', '2023-05-18', 5, 5),
('Filter Replacement', 'Maintenance', '2023-06-08', 6, 6),
('Transmission Service', 'Drivetrain', '2023-07-20', 7, 7),
('Coolant Flush', 'Cooling', '2023-08-14', 8, 8),
('Spark Plugs', 'Engine', '2023-09-22', 9, 9),
('Wiper Replacement', 'Safety', '2023-10-05', 10, 10);

-- Insert data into repairman
INSERT INTO repairman (name, workhour, salary) VALUES
('Thomas White', '9AM-5PM', 45000),
('Jessica Harris', '8AM-4PM', 48000),
('Charles Martin', '10AM-6PM', 52000),
('Karen Jackson', '7AM-3PM', 47000),
('Steven Clark', '9AM-5PM', 51000),
('Nancy Lewis', '8AM-4PM', 49000),
('George Robinson', '10AM-6PM', 53000),
('Melissa Walker', '7AM-3PM', 46000),
('Edward Allen', '9AM-5PM', 50000),
('Donna Young', '8AM-4PM', 48000);

-- Insert data into servicerepairman
INSERT INTO servicerepairman (service_id, repairman_id, hours_worked) VALUES
(1, 1, 1.5),
(2, 2, 2.0),
(3, 3, 1.0),
(4, 4, 0.5),
(5, 5, 2.5),
(6, 6, 1.0),
(7, 7, 3.0),
(8, 8, 1.5),
(9, 9, 2.0),
(10, 10, 0.5);


