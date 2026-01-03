/*
Railway Reservation System (minimal demo schema).
*/

CREATE TABLE trains (
    train_id NUMBER PRIMARY KEY,
    train_name VARCHAR2 (100) NOT NULL
);

CREATE TABLE passengers (
    passenger_id NUMBER PRIMARY KEY,
    full_name VARCHAR2 (120) NOT NULL
);

CREATE TABLE bookings (
    booking_id NUMBER PRIMARY KEY,
    train_id NUMBER NOT NULL,
    passenger_id NUMBER NOT NULL,
    journey_date DATE NOT NULL,
    seat_no VARCHAR2 (10),
    status VARCHAR2 (20) DEFAULT 'CONFIRMED' NOT NULL,
    CONSTRAINT fk_booking_train FOREIGN KEY (train_id) REFERENCES trains (train_id),
    CONSTRAINT fk_booking_passenger FOREIGN KEY (passenger_id) REFERENCES passengers (passenger_id)
);