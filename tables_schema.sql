CREATE TABLE departments (
	DepartmentID VARCHAR PRIMARY KEY,
	DepartmentName VARCHAR
);

CREATE TABLE titles (
	TitleID VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees (
	EmployeeID INTEGER PRIMARY KEY,
	TitleID VARCHAR,
	FOREIGN KEY (TitleID) REFERENCES titles(TitleID),
	birthDate VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	EmployeeID INTEGER,
	DepartmentID VARCHAR,
	FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	DepartmentID VARCHAR,
	EmployeeID INTEGER,
	FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	EmployeeID INTEGER,
	FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
	salary INTEGER
);