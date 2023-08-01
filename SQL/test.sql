-- select * from <table>; - gets you all rows and columns

-- select <column>,<second column> from <table>;

-- change name of column  by using AS keyword
-- e.x. title AS Title 
-- e.x. first_pub AS "First Published"
-- e.x. author "Author Name"
-- or make alias for table names
-- e.x. ...FROM models AS md...


-- WHERE <conditional> 
-- SELECT ... FROM... WHERE
-- e.x. SELECT title, year FROM books WHERE author = "cheems"
-- all books by cheems with columns being title and year
-- e.x. SELECT title FROM books WHERE author != "J.K. Rowling"
-- note == is just "=" in SQL

-- use AND/OR for multiple conditionals

-- SELECT ... FROM... WHERE <column> (NOT) IN (<value1>,<value2>,<value3>)
-- BETWEEN <MIN> AND <MAX>
-- LIKE "%" 

-- <variable> IS (NOT) NULL;
-- SELECT <database1>,<database2>


--INSERT INTO <database> (<column names>) VAlUES (<val1>,<val2>),(<another entry>)

--UPDATE <database> SET <column> = <value> WHERE <conditional>

--DELETE FROM <database> : deletes all



-- BEGIN TRANSACTIONS; all statements after will be run in one go, autocommit is switched off, starts transaction
-- COMMIT; written as closer, commits all changes since transaction started and turns auto commit back on
-- ROLLBACK; when this is written the previous statements aren't committed

--ORMS - libraries, object-relational mapping, use other programming language to use SQL, handles transactions

--ORDER BY <col> [ASC/DESC]
-- can have multiple column orders
-- e.x. ORDER BY last_name ASC, first_name ASC

-- LIMIT <num>; must be at end of line

-- OFFSET <num>; starts one after that number
-- e.x. OFFSET 50; will start on 51st row
-- or use LIMIT <# rows>, <# rows skipped>


--UPPER()
-- || is the concatentaion operator 

--Single quotes should be used for String literals (e.g. 'lbs'), 
--and double quotes should be used for identifiers like column aliases (e.g. "Max Weight"):

--LOWER()

--SUBSTR(<value/col>,<start>, <len>)

--REPLACE(<val>, <target>, <replacement>)

--COUNT(*)
--DISTINCT keyword

--COUNT(DISTINCT category)

-- SELECT COUNT(*) as category_count from books GROUP BY category : gives you number of items in each category

--SUM(<col>)

--AVG(<col>)

--MAX()
--MIN()

--ROUND(<val>, <num decimal places to round to>)

--DATE("now")

--DATE(<time string>, <modifier>, <modifer>...)
--time string: "YYYY-MM-DD"
--modifier: "+7 days", "-7 days"

--TIME()

--can use DATE() and TIME() to only extract specific info

--STRFTIME(<format str>, <time str>, <modifier>)
-- "%d, %m, %Y"

--Normalization: avoid repetitive data, process of designing relational database
--Set: group of similar things
--Unique Key: uniqueness within given col
--Primary Key: like unique key but cannot have null value, only one per table
--foreign key: column from one table references primary key of another table
-- foreign key constraint must be applied first

--one to many: one row linked to many rows in another table
--foreign key is on the many side

--many to many: need third table that connect two IDs  (junction table)
-- order and parts

--one to one: sometimes can combine into one table, good to protect from editing some data (only one ID column in both tables)
--crow's feet notation

--INNER JOIN <table2> ON <equality condition>
--equality condition e.x. make.MakeID = model.MakeID
-- where foreign key has match to a primary key
-- middle overlap section of venn diagram

--LEFT OUTER JOIN - everythign in left circle
--RIGHT OUTER JOIN - everything in right circle
-- FULL OUTER JOIN - everything

-- SELECT <col> FROM <table1> INNER JOIN <table2> ON <equality condition> WHERE <search conditional>

--UNION: must have same number of columns in each table
-- e.x. SELECT <columns> from <table1> UNION SELECT <columns> from <table2>
--UNION ALL: includes duplicates
--INTERSECT: returns only results that exists in both 
--EXCEPT: returns results not in the second table

-- SELECT name FROM Fruit 
--   WHERE name BETWEEN 'A' AND 'L'
-- UNION 
-- SELECT name FROM Vegetable 
--   WHERE Name BETWEEN 'A' AND 'L';


-- SELECT <col> FROM <table1> WHERE <col1> <NOT> IN (
--  SELECT <col1> // this and col1 above must match
--  FROM <table2>
--  WHERE <search criteria>
-- )

--------TEMPORARY TABLE--------
-- SELECT <cols>
-- FROM <table>
-- <INNER | OUTER> JOIN
-- (SELECT <cols> FROM <table> WHERE <search criteria>) AS <Alias>
-- ON <Join criteria>;


--When using a subquery to create a derived table, you can only select ONE column in the Subquery.
--When using IN with a subquery, you can only select ONE column in the Subquery.
--your subquery belongs FROM section of the query

-- SELECT * FROM sale AS s
--            INNER JOIN (SELECT customerid FROM customer WHERE gender = 'F') AS c
--            ON s.customerid = c.customerid;


--Common Table Expression
-- With cte_name AS (

-- )

-- Select * from cte_name

-- can use > and < with letters to limit what characters you want (e.x. A thru K)


-- Which teachers teach a class during all 7 periods?
-- select first_name, last_name, count(1) as ct from teachers
-- join classes on classes.teacher_id = teachers.id
-- group by teachers.id having ct = 7