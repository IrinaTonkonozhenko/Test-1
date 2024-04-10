CREATE schema qa_auto;
CREATE TABLE qa_auto.car_brands(
id int,
title varchar (255)
);
CREATE TABLE qa_auto.car_models(
id int,
car_Brand_id int,
title varchar (255)
);
CREATE TABLE qa_auto.users(
id int,
first_name varchar (255),
last_name varchar (255),
email varchar (255),
password varchar (255)
);
CREATE TABLE qa_auto.cars(
id int,
user_id int,
car_Brand_id int,
car_Model_id int,
mileage float,
initial_Mileage float
) 