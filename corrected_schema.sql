CREATE TABLE "employees" (
    "emp_no" int   NOT NULL PRIMARY KEY,
    "emp_title" VARCHAR(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL
    
     
);
CREATE TABLE "departments" (
    "dept_no" VARCHAR(10)   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR(25)   NOT NULL
	 
	
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" int   NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no)
);


CREATE TABLE "titles" (
    "title_id" VARCHAR(10)   NOT NULL PRIMARY KEY,
    "title" VARCHAR(25)   NOT NULL
-- 	FOREIGN KEY (title_id) REFERENCES employees(emp_title)
);

ALTER TABLE employees ADD CONSTRAINT emp_title FOREIGN KEY(emp_title) REFERENCES titles(title_id);

