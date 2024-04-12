CREATE TABLE qa_auto.car_brands(
id int primary key,
title varchar (255)
);
INSERT INTO qa_auto.car_brands (id, title) 
values (1,'AUDI'), 
(2,'BMW'), 
(3,'Toyota'), 
(4, 'Ford'),
(5,'Chevrolet');

CREATE TABLE qa_auto.car_models(
id int primary key,
car_Brand_id int,
foreign key (car_Brand_id) references car_brands(id),
title varchar (255)
);

INSERT INTO qa_auto.car_models (id, car_Brand_id, title)
VALUES (1, 1, 'Mustang'), 
(2, 2, 'Camry'),
(3,3, 'Prius'),
(4,4, 'Corvette'),
(5,5, 'F-150');

CREATE TABLE qa_auto.users(
id int primary key,
first_name varchar (255),
last_name varchar (255),
email varchar (255),
password varchar (255)
);

INSERT INTO qa_auto.users (id, first_name, last_name, email, password)
VALUES (1, 'Ira', 'Pron', 'pron@gmail.com', 'hgjfk'),
(2, 'Olena', 'Nert', 'nert@gmail.com', 'hfnjdm'),
(3, 'Anna', 'Bort', 'bort@gmail.com', 'hjbdv'),
(4, 'Nikita', 'Forest', 'forest@gmail.com', 'jwndkml'),
(5, 'Jenya', 'Gerz', 'gerz@gmail.com', 'jskdmc')



