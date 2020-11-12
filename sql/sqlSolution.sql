-- 1. Show the subject names of books supplied by *supplier2*.
SELECT db_subject.CategoryName FROM db_book 
JOIN db_supplier
ON db_book.SupplierID=db_supplier.SupplierID
JOIN db_subject
ON db_book.SubjectID=db_subject.SubjectID
WHERE db_supplier.CompanyName='supplier2';

-- 2. Show the name and price of the most expensive book supplied by *supplier3*.  
SELECT Title, maxPrice
FROM suppliers
JOIN (SELECT books.Title, books.SupplierID, max(books.UnitPrice) maxPrice FROM books) maxbook
ON maxbook.SupplierID=suppliers.SupplierID
WHERE suppliers.CompanyName='supplier3';

-- 3. Show the unique names of all books ordered by *lastname1 firstname1*.


-- 4. Show the title of books which have more than 10 units in stock.
SELECT Title FROM db_book WHERE db_book.Quantity>10;

-- 5. Show the total price *lastname1 firstname1* has paid for the books.

-- 6. Show the names of the customers who have paid less than $80 in totals.

-- 7. Show the name of books supplied by *supplier2*.

-- 8. Show the total price each customer paid and their names.  List the result in descending price.

-- 9. Show the names of all the books shipped on 08/04/2016 and their shippers' names.

-- 10. Show the unique names of all the books *lastname1 firstname1* and  *lastname4 firstname4* *both* ordered.

-- 11. Show the names of all the books *lastname6 firstname6* was responsible for.

-- 12. Show the names of all the ordered books and their total quantities.  List the result in ascending quantity.

-- 13. Show the names of the customers who ordered at least 2 books.

-- 14. Show the name of the customers who have ordered at least a book in *category3* or *category4* and the book names.

-- 15. Show the name of the customer who has ordered at least one book written by *author1*.

-- 16. Show the name and total sale (price of orders) of each employee.

-- 17. Show the book names and their respective quantities for open orders (the orders which have not been shipped) at midnight 08/04/2016.

-- 18. Show the names of customers who have ordered more than 1 book and the corresponding quantities.  List the result in the descending quantity.

-- 19. Show the names of customers who have ordered more than 3 books and their respective telephone numbers.