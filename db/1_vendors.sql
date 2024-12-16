USE mydb;

INSERT INTO vendors (name, ratings, noOfReviews, listing, logo, price, deliveryTime, deliveryFee, address, latitude, longitude, cuisine)
VALUES
('Beirut Express (Shenton)', 4.9, '500+', 'https://images.deliveryhero.io/image/fd-sg/LH/x4us-listing.jpg', 'https://images.deliveryhero.io/image/fd-sg/LH/x4us-listing.jpg', '$$', '20-35 min', 0, '1 Shenton Way, #01-06, Singapore 068803', 1.2792796110333398, 103.85034832420642, 'Mexican'), 
('Lavi Taco (Pearl''s Hill Terrace)', 5.0, '20', 'https://images.deliveryhero.io/image/fd-sg/LH/nwvl-listing.jpg', 'https://images.deliveryhero.io/image/fd-sg/LH/nwvl-listing.jpg', '$$$', '15-30 min', 0, '195 Pearl''s Hill Terrace, #01-54, Singapore 168976', 1.284845663647168, 103.84157646478016, 'Mexican'),
('Good Luck BBQ 上上签四川小酒馆 (New Bridge)', 4.9, '70', 'https://images.deliveryhero.io/image/fd-sg/LH/kgqw-listing.jpg', 'https://images.deliveryhero.io/image/fd-sg/sg-logos/cs4os-logo.jpg', '$$$', '55-75 min', 10.00, '277 New Bridge Road 088751', 1.2823284738147278, 103.84215781906727, 'Asian'),
('Shake Shack (Neil Road)', 4.9, '5000+', 'https://images.deliveryhero.io/image/fd-sg/LH/y8pd-listing.jpg', 'https://images.deliveryhero.io/image/fd-sg/sg-logos/cr2rj-logo.jpg', '$$', '10-25 min', 0, '89 Neil Rd, #01-01, Singapore 088849', 1.27853977255384, 103.84175418201356, 'Burgers'),
('Lion City Dim Sum (Lau Pa Sat)', 4.7, '18', 'https://images.deliveryhero.io/image/fd-sg/LH/vwmj-listing.jpg', 'https://images.deliveryhero.io/image/fd-sg/sg-logos/cb8yb-logo.jpg', '$', '20-35 min', 4.99, '18 Raffles Quay, Singapore 048582', 1.2806860248680185, 103.85037219656385, 'Chinese');
