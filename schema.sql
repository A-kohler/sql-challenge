create table dept_manager (
    dept_no int   not NULL,
    emp_no date   not NULL,
    from_date date   not NULL,
    to_date date   not NULL
);

create table departments (
    dept_no int   not NULL,
    dept_name varchar   not NULL,
    primary key (dept_no)
);

create table titles (
    title_id varchar    not NULL,
    title varchar   not NULL,
    primary key (title_id)
);

create table employees (
    emp_no int   not NULL,
    birth_date date   not NULL,
    first_name varchar   not NULL,
    last_name varchar   not NULL,
    gender varchar   not NULL,
    hire_date date   not NULL,
    constraint pk_debt_emp primary key (
        emp_no
     )
);

create table  salaries (
    emp_no int   not NULL,
    salary int   not NULL,
    from_date date   not NULL,
    to_date date   not NULL
);

create table dept_emp (
    emp_no int   not NULL,
    dept_no varchar   NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no),
    primary key (emp_no, dept_no)
);