USE ecommerce;
-- 3
DESC users_data;
-- 4
SELECT * FROM users_data
LIMIT 100;
-- 5
SELECT COUNT(DISTINCT country) dist_country, COUNT(DISTINCT language) dist_language 
FROM users_data;
-- 6
SELECT SUM(socialNbFollowers),gender FROM users_data GROUP BY gender;
-- 7
-- (a)
SELECT COUNT(*) Profile_picture FROM users_data WHERE hasProfilePicture ="True";
-- (b)
SELECT COUNT(*) Ecommerce_platform FROM users_data WHERE hasAnyApp ="True";
-- (c)
SELECT COUNT(*) Android_users FROM users_data WHERE hasAndroidApp ="True";
-- (d)
SELECT COUNT(*) Ios_users FROM users_data WHERE hasIosApp ="True";
-- 8
SELECT country,SUM(productsBought) FROM users_data 
GROUP BY country 
ORDER BY SUM(productsBought) DESC;
-- 9
SELECT country,SUM(productsSold) FROM users_data 
GROUP BY country 
ORDER BY SUM(productsSold) DESC;
-- 10
SELECT country,SUM(productsPassRate) FROM users_data 
GROUP BY country 
ORDER BY SUM(productsPassRate) DESC LIMIT 10;
-- 11
SELECT language, COUNT(language) FROM users_data
GROUP BY language
ORDER BY COUNT(language) DESC;
-- 12
SELECT gender, SUM(socialProductsLiked) , SUM(productsWished)
FROM users_data
WHERE gender ='F' ;
-- 13
SELECT gender , SUM(productsSold), SUM(productsBought)
FROM users_data
WHERE gender='M';
-- 14
SELECT country, SUM(productsBought)
FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;
-- 15
SELECT country
FROM users_data
WHERE productsSold=0  GROUP BY country LIMIT 10;
-- 16
SELECT * FROM users_data 
ORDER BY daysSinceLastLogin  LIMIT 110;
-- 17
SELECT gender,COUNT(daysSinceLastLogin) 
FROM users_data 
WHERE gender='F' AND daysSinceLastLogin >100;
-- 18
SELECT COUNT(gender) Female, country
FROM users_data
WHERE gender='F' GROUP BY country ORDER BY COUNT(gender) DESC;
-- 19
SELECT COUNT(gender) Male, country
FROM users_data
WHERE gender='M' GROUP BY country ORDER BY COUNT(gender) DESC;
-- 20
SELECT country, AVG(productsSold), AVG(productsBought)
FROM users_data
WHERE gender='M' GROUP BY country;
