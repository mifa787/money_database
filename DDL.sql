CREATE SCHEMA IF NOT EXISTS Collection;

CREATE TABLE IF NOT EXISTS Collection.Item (
    item_id SERIAL PRIMARY KEY,
    type VARCHAR(200) NOT NULL,
    name VARCHAR(200) NOT NULL,
    number INTEGER
);

CREATE TABLE IF NOT EXISTS Collection.Country (
    country_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    history VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS Collection.Manufacturer (
    manufacturer_id SERIAL PRIMARY KEY,
    name VARCHAR (200),
    history VARCHAR (200)
);

CREATE TABLE IF NOT EXISTS Collection.Material (
    material_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    density DECIMAL(10, 2),
    valuable VARCHAR(200)
);


CREATE TABLE IF NOT EXISTS Collection.Coin (
    item_id INTEGER NOT NULL,
    name VARCHAR(200) NOT NULL,
    value VARCHAR(200),
    currency VARCHAR(200),
    release_year VARCHAR(4),
    country VARCHAR(200) NOT NULL,
    country_id INTEGER NOT NULL,
    series VARCHAR(200),
    diameter DECIMAL(10, 2),
    width DECIMAL(10, 2),
    milling VARCHAR(200),
    material VARCHAR(200) NOT NULL,
    material_id INTEGER NOT NULL,
    manufacturer VARCHAR(200) NOT NULL,
    manufacturer_id INTEGER NOT NULL,
    weight DECIMAL(10, 2),
    world_number BIGINT,
    condition VARCHAR(200),
    image BYTEA,
    receive_date TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES Collection.Item,
    FOREIGN KEY (country_id) REFERENCES Collection.Country,
    FOREIGN KEY (material_id) REFERENCES Collection.Material,
    FOREIGN KEY (item_id) REFERENCES Collection.Manufacturer
);

CREATE TABLE IF NOT EXISTS Collection.Cash (
    item_id INTEGER NOT NULL,
    name VARCHAR(200) NOT NULL,
    value VARCHAR(200),
    currency VARCHAR(200),
    release_year VARCHAR(4),
    country VARCHAR(200) NOT NULL,
    country_id INTEGER NOT NULL,
    series VARCHAR(200),
    size VARCHAR(200),
    material VARCHAR(200) NOT NULL,
    material_id INTEGER NOT NULL,
    manufacturer VARCHAR(200) NOT NULL,
    manufacturer_id INTEGER NOT NULL,
    watermark VARCHAR(200),
    world_number BIGINT,
    protective_elements VARCHAR(200),
    condition VARCHAR(200),
    image BYTEA,
    receive_date TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES Collection.Item,
    FOREIGN KEY (country_id) REFERENCES Collection.Country,
    FOREIGN KEY (material_id) REFERENCES Collection.Material,
    FOREIGN KEY (item_id) REFERENCES Collection.Manufacturer
);



