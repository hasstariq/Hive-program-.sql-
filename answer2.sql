
CREATE TABLE IF NOT EXISTS Table1 (
    id int,
    name String,
    host_id int,
    host_name String,
    neighbourhood_group String,
    neighbourhood String,
    latitude String,
    longitude String,
    room_type String,
    price int,
    minimum_nights int,
    number_of_reviews int,
    last_review String,
    reviews_per_month float,
    calculated_host_listings_count int,
    availability_365 int
);

LOAD DATA LOCAL INFILE 'AB_NYC_2019.csv' 
INTO TABLE Table1 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'

select room_type, COUNT(room_type) FROM Table1 GROUP BY room_type;