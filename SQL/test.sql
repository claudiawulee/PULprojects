-- select * from <table>; - gets you all rows and columns

-- select <column>,<second column> from <table>;

-- change name of column  by using AS keyword
-- e.x. title AS Title 
-- e.x. first_pub AS "First Published"
-- e.x. author "Author Name"


-- WHERE <conditional> 
-- SELECT ... FROM... WHERE
-- e.x. SELECT title, year FROM books WHERE author = "cheems"
-- all books by cheems with columns being title and year
-- e.x. SELECT title FROM books WHERE author != "J.K. Rowling"
-- note == is just "=" in SQL

-- use AND/OR for multiple conditionals
