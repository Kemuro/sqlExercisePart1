-- find all products --
 SELECT * FROM bestbuy.products;
-- find all products that cost $1400
 SELECT * FROM bestbuy.products WHERE price = 1400;
-- find all products that cost $11.99 or $13.99
 SELECT * FROM bestbuy.products WHERE Price = 11.99 OR price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
 select * from bestbuy.products where NOT price = 11.99;
-- find  all products and sort them by price from greatest to least
 select * from bestbuy.products order by price desc;
-- find all employees who don't have a middle initial
 select * from bestbuy.employees where MiddleInitial is null;
-- find distinct product prices
 select distinct price from bestbuy.products;
-- find all employees whose first name starts with the letter ‘j’
 select * from bestbuy.employees where FirstName like 'j%';
-- find all Macbooks --
 select * from bestbuy.products where name like 'macbook';
-- find all products that are on sale
 select * from bestbuy.products where OnSale is true;
-- find the average price of all products --
 select avg(products.Price) from bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial --
 select * from bestbuy.employees where Title like 'Geek Squad' and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Try this with the -- between keyword** 
select * from bestbuy.products where StockLevel between 500 and 1200 order by price;