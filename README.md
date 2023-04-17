# sql-challenge
DATA MODELING: 
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site

-ERD is in the folder named "ERD" that has the diagram image and documentation of the making of the image. 

DATA ENGINEERING: 
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

-This can be seen in the tables schemata.sql file (for code). Results can be found in Tables Created from Tables Schemata. 

DATA ANALYSIS: 
List the employee number, last name, first name, sex, and salary of each employee (2 points)
List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
List each employee in the Sales department, including their employee number, last name, and first name (2 points)
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

-Can be found in the Queries (analyis).sql file and reules in the Queries (Analysis) Reults file
