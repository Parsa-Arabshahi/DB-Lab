-- Table: company
CREATE TABLE company (
    company_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    website VARCHAR(100)
);

-- Table: admin
CREATE TABLE admin (
    admin_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    salary NUMERIC(10, 2),
    company_id INTEGER REFERENCES company(company_id)
);

-- Table: customer
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    history TEXT,
    company_id INTEGER REFERENCES company(company_id)
);

-- Table: parking
CREATE TABLE parking (
    parking_id SERIAL PRIMARY KEY,
    address VARCHAR(100),
    capacity INTEGER,
    customer_id INTEGER REFERENCES customer(customer_id),
    company_id INTEGER REFERENCES company(company_id),
    cost NUMERIC(10, 2)
);

-- Table: insurance
CREATE TABLE insurance (
    insurance_id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    expire DATE,
    company_id INTEGER REFERENCES company(company_id)
);

-- Table: car
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(100),
    year INTEGER,
    availability BOOLEAN,
    parking_id INTEGER REFERENCES parking(parking_id),
    company_id INTEGER REFERENCES company(company_id),
    customer_id INTEGER REFERENCES customer(customer_id),
    rating INTEGER
);

-- Table: carinsurance (many-to-many)
CREATE TABLE carinsurance (
    car_id INTEGER REFERENCES car(car_id),
    insurance_id INTEGER REFERENCES insurance(insurance_id),
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (car_id, insurance_id)
);

-- Table: rent
CREATE TABLE rent (
    rent_id SERIAL PRIMARY KEY,
    car_id INTEGER REFERENCES car(car_id),
    customer_id INTEGER REFERENCES customer(customer_id),
    company_id INTEGER REFERENCES company(company_id),
    start_date VARCHAR(50),
    end_date VARCHAR(50),
    payment_status VARCHAR(20),
    insurance_id INTEGER REFERENCES insurance(insurance_id),
    parking_id INTEGER REFERENCES parking(parking_id)
);

-- Table: car_update_log
CREATE TABLE car_update_log (
    log_id SERIAL PRIMARY KEY,
    car_id INTEGER REFERENCES car(car_id),
    old_availability BOOLEAN,
    new_availability BOOLEAN,
    changed_at TIMESTAMPTZ
);

-- Table: accident
CREATE TABLE accident (
    accident_id SERIAL PRIMARY KEY,
    cost NUMERIC(10,2),
    date DATE,
    car_id INTEGER REFERENCES car(car_id),
    customer_id INTEGER REFERENCES customer(customer_id),
    insurance_id INTEGER REFERENCES insurance(insurance_id)
);

-- Table: service
CREATE TABLE service (
    service_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(50),
    date DATE,
    company_id INTEGER REFERENCES company(company_id),
    car_id INTEGER REFERENCES car(car_id)
);

-- Table: repairman
CREATE TABLE repairman (
    repairman_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    workhour VARCHAR(60),
    salary INTEGER
);

-- Table: servicerepairman (many-to-many)
CREATE TABLE servicerepairman (
    service_id INTEGER REFERENCES service(service_id),
    repairman_id INTEGER REFERENCES repairman(repairman_id),
    hours_worked NUMERIC(5,2),
    PRIMARY KEY (service_id, repairman_id)
);
