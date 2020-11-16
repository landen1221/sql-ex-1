-- Comments in SQL Start with dash-dash --

SELECT * FROM analytics WHERE id = 1880;

SELECT id, app_name FROM analytics WHERE last_updated IN ('2018-08-01');

SELECT category, COUNT(category) FROM analytics GROUP BY category;

SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

SELECT app_name, rating, reviews FROM analytics WHERE rating > 4.8 ORDER BY reviews desc LIMIT 1;

SELECT category, AVG(rating) AS avg_ratings FROM analytics GROUP BY category ORDER BY avg_ratings desc;

SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

SELECT app_name, rating FROM analytics WHERE min_installs < 50 AND rating > 0 ORDER BY rating desc;

SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews > 1000;

SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN .10 AND 1 ORDER BY reviews desc LIMIT 10;

SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;

SELECT SUM(reviews) FROM analytics;

SELECT category, COUNT(*) AS cat_count FROM analytics GROUP BY category HAVING COUNT(*) > 300 ORDER BY cat_count desc;

SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs > 100000;

