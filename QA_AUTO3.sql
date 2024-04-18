SELECT * FROM `hillel-qauto`.user_profiles;
SELECT *FROM `hillel-qauto`.user_profiles WHERE name LIKE '%am%';

SELECT MAX(totalCost) From `hillel-qauto`.expenses 
WHERE carId = (SELECT carId FROM `hillel-qauto`.car_brands WHERE title = 'Audi');

SELECT carBrandId , COUNT(*) AS count_models FROM `hillel-qauto`.cars 
WHERE carBrandId IN (SELECT carBrandId FROM `hillel-qauto`.car_brands WHERE title IN ('Audi', 'BMW')) 
group by carBrandId;

SELECT  car_models.title AS car_model, car_brands.title AS car_brand, COUNT(DISTINCT cars.userId) AS user_count FROM `hillel-qauto`.cars
JOIN car_models ON cars.carModelId = car_models.id 
JOIN car_brands ON car_models.carBrandId = car_brands.id
GROUP BY 
car_models.title,
car_brands.title;

SELECT name, lastName FROM `hillel-qauto`.user_profiles 
INNER JOIN `hillel-qauto`.cars ON user_profiles.userId = cars.userId; 
