CREATE TABLE customers (
                           id INT PRIMARY KEY,
                           name VARCHAR(100),
                           status VARCHAR(20),
                           total_mileage INT
);

CREATE TABLE aircrafts (
                           id INT PRIMARY KEY,
                           name VARCHAR(100),
                           total_seats INT
);

CREATE TABLE flights (
                         flight_number VARCHAR(10) PRIMARY KEY,
                         aircraft_id INT,
                         mileage INT,
                         FOREIGN KEY (aircraft_id) REFERENCES aircrafts(id)
);

CREATE TABLE bookings (
                          id INT PRIMARY KEY,
                          customer_id INT,
                          flight_number VARCHAR(10),
                          FOREIGN KEY (customer_id) REFERENCES customers(id),
                          FOREIGN KEY (flight_number) REFERENCES flights(flight_number)
);
