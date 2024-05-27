CREATE TABLE restaurants(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL check(price_range >= 1 and price_range <= 5)
);

INSERT INTO restaurants(name, location, price_range) VALUES ('mc donald', 'Washington', 4);


CREATE TABLE reviews (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    restaurant_id BIGINT NOT NULL REFERENCES restaurants(id),
    name VARCHAR(50) NOT NULL,
    review TEXT NOT NULL,
    rating INT NOT NULL check(rating >= 1 and rating <= 5)
);

INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (4, 'Joan', 'bad restaurant', 4);
INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (4, 'Mike', 'bad restaurant', 3);
INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (4, 'Denise', 'bad restaurant', 4);
INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (4, 'Mutio', 'bad restaurant', 2);