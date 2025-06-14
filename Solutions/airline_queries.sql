-- Total number of flights
SELECT COUNT(DISTINCT flight_number) FROM flights;

-- Average flight distance
SELECT AVG(mileage) FROM flights;

-- Average number of seats per aircraft
SELECT AVG(total_seats) FROM aircrafts;

-- Average miles flown by customers, grouped by status
SELECT status, AVG(total_mileage) FROM customers GROUP BY status;

-- Max miles flown by customers, grouped by status
SELECT status, MAX(total_mileage) FROM customers GROUP BY status;

-- Number of aircrafts with "Boeing" in their name
SELECT COUNT(*) FROM aircrafts WHERE name LIKE '%Boeing%';

-- Flights with distance between 300 and 2000 miles
SELECT * FROM flights WHERE mileage BETWEEN 300 AND 2000;

-- Average flight distance booked, grouped by customer status
SELECT c.status, AVG(f.mileage)
FROM bookings b
         JOIN customers c ON b.customer_id = c.id
         JOIN flights f ON b.flight_number = f.flight_number
GROUP BY c.status;

-- Most booked aircraft among Gold status members
SELECT a.name, COUNT(*) AS total_bookings
FROM bookings b
         JOIN customers c ON b.customer_id = c.id
         JOIN flights f ON b.flight_number = f.flight_number
         JOIN aircrafts a ON f.aircraft_id = a.id
WHERE c.status = 'Gold'
GROUP BY a.name
ORDER BY total_bookings DESC
    LIMIT 1;
