-- joins: select all the computers from the products table:
 -- using the products table and the categories table, return the product name and the category name
 select products.Name,categories.name 
 from products 
 left join categories on products.CategoryID = categories.CategoryID 
 where products.CategoryID = 1;
 
-- joins: find all product names, product prices, and products ratings that have a rating of 5
 select products.Name, products.Price, reviews.Rating
 from products
 inner join reviews on products.ProductID = reviews.ProductID
 where Rating = 5;
 
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
select SUM(S.QUANTITY) as total, e.FirstName, e.LastName from bestbuy.sales AS s
inner join employees AS e on e.EmployeeID = s.EmployeeID
group by s.EmployeeID
order by total desc;

-- joins: find the name of the department, and the name of the category for Appliances and Games
SELECT d.Name, c.Name from bestbuy.departments as d
inner join categories as c on d.DepartmentID = c.DepartmentID
where c.name = 'APPLIANCES' OR C.NAME = 'GAMES';

-- joins: find the product name, total # sold, and total price sold,
-- for Eagles: Hotel California --You may need to use SUM()
SELECT P.NAME, SUM(S.QUANTITY) AS TOTAL_SOLD, SUM(S.PRICEPERUNIT * S.QUANTITY) AS TOTAL_PRICE_PER_PRODUCT FROM bestbuy.products AS P
INNER JOIN SALES AS S ON S.PRODUCTID = P.ProductID
WHERE P.ProductID = 97;

-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
SELECT P.NAME, r.REVIEWER, MIN(R.RATING), R.COMMENT FROM reviews AS R
INNER JOIN products AS P ON P.productID = R.ProductID
WHERE P.NAME LIKE '%VISIO%';