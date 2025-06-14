INSERT INTO customers (id, name, status, total_mileage) VALUES
                                                            (1, 'Agustine Riviera', 'Silver', 115235),
                                                            (2, 'Alaina Sepulvida', NULL, 6008),
                                                            (3, 'Tom Jones', 'Gold', 205767);

INSERT INTO aircrafts (id, name, total_seats) VALUES
                                                  (1, 'Boeing 747', 400),
                                                  (2, 'Airbus A330', 236),
                                                  (3, 'Boeing 777', 264);

INSERT INTO flights (flight_number, aircraft_id, mileage) VALUES
                                                              ('DL143', 1, 135),
                                                              ('DL122', 2, 4370),
                                                              ('DL53', 3, 2078);

INSERT INTO bookings (id, customer_id, flight_number) VALUES
                                                          (1, 1, 'DL143'),
                                                          (2, 1, 'DL122'),
                                                          (3, 2, 'DL122'),
                                                          (4, 3, 'DL53');
