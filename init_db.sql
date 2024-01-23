-- DB & tables
-- uncomment if not docker-compose 

-- CREATE DATABASE homework; 
-- CREATE ROLE tm_admin LOGIN ENCRYPTED PASSWORD 'admin';
-- GRANT SELECT, INSERT, UPDATE, DELETE ON orders, products, positions TO rm_admin;

CREATE TABLE orders (
    id UUID PRIMARY KEY, 
    name VARCHAR(200) NOT NULL, 
    datetime TIMESTAMP NOT NULL, 
    positions UUID[] DEFAULT '{}'
);

CREATE TABLE products (
    id UUID PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    count INTEGER NOT NULL
);

CREATE TABLE positions (
    id UUID PRIMARY KEY,
    count INTEGER NOT NULL, 
    order_id UUID REFERENCES orders, 
    product_id UUID REFERENCES products
);

-- User (actions: select, insert, update, delete)


INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'шарнир', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'сверло М10', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'винт', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'болт', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Фриза М12', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Сверло М12', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Профнастил 2м', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Квадратный профиль 3mm', floor(random() * 100 + 10)::int);
INSERT INTO products (id, name, count) VALUES (gen_random_uuid (), 'Брус 60х60х1000', floor(random() * 100 + 10)::int);
