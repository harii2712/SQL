create database projbatch
use projbatch
CREATE TABLE owners (
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE agents (
    agent_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    agency_name VARCHAR(100)
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    interested_in VARCHAR(50) -- Buy / Rent
);
CREATE TABLE properties (
    property_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    description TEXT,
    price DECIMAL(12,2),
    location VARCHAR(100),
    property_type VARCHAR(50), -- apartment, villa, plot etc
    area_sqft INT,
    bedrooms INT,
    bathrooms INT,
    owner_id INT,
    agent_id INT,
    status VARCHAR(20), -- available, sold, rented
    listed_date DATE,
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id),
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT,
    customer_id INT,
    sale_price DECIMAL(12,2),
    transaction_date DATE,
    payment_status VARCHAR(20), -- Paid, Pending
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE visits (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT,
    customer_id INT,
    visit_date DATE,
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
select * from owners
select * from agents
select * from customers
select * from properties
select * from transactions
select * from visits





