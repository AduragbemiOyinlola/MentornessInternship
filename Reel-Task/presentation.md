---
marp: true
paginate: true
---

# **Views Overview: Introduction to views as virtual tables derived from the result of a SELECT query.**

---
## **What is a View in SQL?**

A _view_ is a virtual table whose contens are obtained from an existing table or tables in a database that are derived from the result of a **SELECT** query.

View defines a customized query that retrieves data from one or more tables, and represents the data as if it was coming from a single source.

A view is not a real table with data instead, it is a virtual table created from a **SELECT** query (can be thought of as a reflection) and this shows a subset of data from one of more table.

---

## **How to Create a View**

Below is a simple syntax for creating _Views_ in SQL from a single table.

```
CREATE VIEW view_name AS
SELECT column1, column2...
FROM table
WHERE condition
ORDER BY condition;
```
- **CREATE VIEW**: this is the statement used in creating the view.
- **view_name**: the name for the view.

---

Syntax for creating a _View_ from two (2) table

```
CREATE VIEW view_name AS
SELECT column1, column2...
FROM table1
JOIN table2 ON table1.id = table2.id
WHERE condition
ORDER BY condition;
```

- **JOIN**: keyword for combining tables.
- **ON**: clause used with the JOIN keyword to combine tables.

NB: A view can be created from one or more tables.

---

## **WORKING WITH A VIEW**

After creating a view, one can carryout analysis work on the created view. To see all data in the created view

```
SELECT * FROM view_name;
```

Upon retrieving data from the view, we can commence the analysis on the created view. This analysis encompasses various operations, including but not limited to calculating the **minimum**, **maximum**, **average**, **sum**, **count**, and **standard deviation**...

---

## **HOW TO DELETE A VIEW**
While there is a syntax for creating views, there is also a syntax for deleting views. Below is the syntax for deleting view.

```
DROP VIEW view_name;
```

---

## **USES OF VIEW**

- **Restricting data access**: 
    - Views provide an additional level of table security by restricting access to a predetermined set of rows and columns of a table.
    - This can find use in database adminstrator technical interview, sensitive data can not be revealed to someone who is not an employee in a company.
- **Reusability**:
    - Views allow us to store SQL queries in virtual containers (like virtual tables) within our database.Instead of repeatedly writing the same SELECT statements, we create a view once and reuse it.
    - For example, if we commonly join multiple tables, we can create a view with the necessary logic. It saves time and reduces repetition.