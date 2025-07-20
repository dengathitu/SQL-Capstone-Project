# SQL Capstone Project

## Author  
**Den Peters Ngotho Gathitu**  
Location: Berlin, Germany 
Email: dengathitu@gmail.com
LinkedIn: [https://www.linkedin.com/in/dpng/](https://www.linkedin.com/in/dpng/)

---

## Project Overview

This SQL Capstone Project demonstrates the application of relational database design, data population, and query logic to solve practical analytical challenges. It involves creating and working with three interrelated tables: `Salesmen`, `Customers`, and `Orders`.

---

## Objectives

- Construct a relational schema with appropriate key constraints
- Insert sample data reflecting real-world relationships
- Use SQL queries to derive insights and answer business questions
- Maintain reproducibility and clarity throughout the workflow

---

## Database Structure

| Table Name       | Description                                        |
|------------------|----------------------------------------------------|
| `Salesmen`       | Sales representatives and their commission details |
| `Customers`      | Client records linked to specific salesmen         |
| `Orders`         | Purchase transactions associated with both parties |

All tables include primary keys and are interlinked with foreign key references.

---

## Included Files

| File Name           | Contents                                           |
|---------------------|----------------------------------------------------|
| `sales_schema.sql`  | Table creation and sample data insertion           |
| `questions.sql`     | Seven queries addressing data relationships        |
| `README.md`         | Full documentation of the project                  |

---

## Analytical Tasks

1. Match customers and salesmen based on shared city (case-insensitive)
2. Generate a table linking each customer to their assigned salesman
3. View contents of the customer-salesman relationship table
4. Identify orders where the customer’s city does not match the salesman’s
5. Display those mismatched orders
6. Create a table combining order data with customer names
7. View the combined order and customer information

All queries are formatted for clarity and reproducibility.

---

## How to Run

1. Open the project folder in VS Code  
2. Use the SQLite extension or command line to open `database.db`  
3. Run `sales_schema.sql` to create and populate the tables  
4. Run `questions.sql` to execute the seven queries  
5. View outputs using the VS Code SQLite extension or `SELECT * FROM` statements

---

## Learning Outcomes

- SQL schema design with foreign key relationships  
- Data manipulation using JOINs and subqueries  
- Creating tables from query results for analysis  
- Proper use of `DROP TABLE IF EXISTS` for reliable re-execution  
- Clean documentation suitable for academic and professional presentation

---

For inquiries, collaboration, or feedback, please connect via LinkedIn:  
[https://www.linkedin.com/in/dpng/](https://www.linkedin.com/in/dpng/)
