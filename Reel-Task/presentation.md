---
marp: true
paginate: true
---

# **Views Overview: Introduction to views as virtual tables derived from the result of a SELECT query.**

---
## **What is a View in SQL?**

A _view_ is a virtual table whose contens are obtained from an existing table or tables in a database that are derived from the result of a **SELECT** query.

View defines a customized query that retrieves data from one or more tables, and represents the data as if it was coming from a single source.

---

A view is not a real table with data instead, it is a virtual table created from a **SELECT** query (can be thought of as a reflection) and this shows a subset of data from one of more table.

---

## **How to Create a View**

Below is a simple syntax of how to create _Views_ in SQL

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
## **WORKING WITH A VIEW**

After creating a view, one can carryout analysis work on the created view. To see all data in the created view

```
SELECT * FROM view_name
```

On getting the data from the view, analysis on the created view can start which includes but not limited to getting the MIN, MAX, AVG, SUM, COUNT, STDEV...

---

## **HOW TO DELETE A VIEW**
While there is a syntax for creating views, there is also a syntax for deleting views. Below is the syntax for deleting view.

```
DROP VIEW view_name;
```


---

## **USES OF VIEW**

---

reel structure
- what is view?
- how to create a view
- deleting a view
- usefulness of view
