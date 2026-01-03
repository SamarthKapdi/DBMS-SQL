/*
Sample queries for Railway Reservation System.
*/

-- Bookings for a given date
SELECT b.booking_id, t.train_name, p.full_name, b.journey_date, b.seat_no, b.status
FROM
    bookings b
    JOIN trains t ON t.train_id = b.train_id
    JOIN passengers p ON p.passenger_id = b.passenger_id
WHERE
    b.journey_date = DATE '2026-01-03'
ORDER BY b.booking_id;

-- Count bookings per train
SELECT t.train_id, t.train_name, COUNT(*) AS booking_count
FROM bookings b
    JOIN trains t ON t.train_id = b.train_id
GROUP BY
    t.train_id,
    t.train_name
ORDER BY booking_count DESC;