# Team Project

## Assignment on Databases course from our University (4th semester) 

The project was divided in 2 sections 

## 1 section 

This project aims to familiarize students with the design, development, and management of databases through a practical example. In the first assignment, we will focus on requirements analysis and database design using both the Entity-Relationship Model and the Relational Model.

### Part A: Requirements Analysis
In this task, we are tasked with creating a database for managing the routes of the Athens Urban Transport Organization (OASA). OASA utilizes the General Transit Feed Specification (GTFS) standard for storing its data, which includes information about routes, dates, times, routes, stops, etc.

The entity names used in the GTFS standard, as well as their relationships, are depicted in the schema below. For detailed information about the attributes stored in each entity, please refer to the GTFS reference description available here.

### Assumptions:
A) The organization has multiple routes, each with its own origin and destination (e.g., Syntagma - Airport). This information is stored in the route entity.
B) Each route operates on different days of the week (e.g., Syntagma - Airport on weekdays, Syntagma - Airport on Sundays, etc.). This information is stored in the calendar entity.
C) On the same day, a route can have multiple trips (e.g., every 30 minutes), and this information is stored in the trips entity.
D) Each route passes through a series of stops, which have their own coordinates and predefined stop times.

The database will support an application that allows users to:

Import route data from GTFS-compliant files.
Manage and export route data to GTFS-compliant files.
Compressed files and individual files can be found here.

### Part B: Entity-Relationship Model
In this part, you are required to analyze the requirements, consider the information and assumptions provided in the assignment, and create an Entity-Relationship (E-R) diagram for the database you will develop.

The E-R diagram should be accompanied by a table explaining how each assumption in the assignment is considered, as well as any additional assumptions made during the design process.


## 2 section
 The goal of this laboratory assignment is to familiarize yourself with the design, development, and management of databases through a practical example. In the second assignment, we will focus on creating and enhancing the relational schema.

### Part A: Requirements
In this part, you are required to provide SQL commands for creating the schema of the first assignment and for inserting data.

1. Schema Creation Commands
In this first part, you need to analyze the given schema and provide the complete set of commands for creating the schema. You should include these commands in a text file named create.sql.

The database you will create should be based on the Entity-Relationship (E-R) diagram and the relational schema that you developed in the first assignment. If you did not arrive at your own relational schema in the first assignment or are unsure about it, you can use the provided schema.

2. Data Insertion Commands
You need to provide commands for inserting data into the database. Specifically, you should include commands to insert 2 rows (routes) with 3 different trips each (for weekdays, Saturdays, and Sundays/holidays). Each route should have at least 5 stops. For simplicity, assume that you are only inserting the first trip for each route, and it repeats every 20 minutes.

You should include these commands in a text file named insert.sql and provide comments explaining each step.

3. Schema Deletion Commands
You need to provide commands for deleting the tables that you created. Include these commands in a text file named drop.sql.

4. Queries
Write SQL queries to answer the following questions:

A) Which stops are included in the first trip of the first route you inserted? Provide the corresponding routeid and trip_id to identify them.

B) What is the time of the last stop for the first trip of the first route on Sundays?

C) How many stops does each route have for each line?

D) Which route of a specific line passes through a chosen stop on Sundays? (Choose a specific value for stop_name)

E) Which company operates the chosen trip? (Choose a specific value for trip_short_name)

#### Implemented with Oracle SQL developer