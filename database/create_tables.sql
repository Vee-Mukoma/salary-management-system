USE salary_managament_system;

CREATE TABLE Department (
	department_id INT AUTO_INCREMENT PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
	staff_id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	age INT NOT NULL,
	id_no VARCHAR(50) NOT NULL,
	phone_no VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	department_id INT,
	role VARCHAR(100) NOT NULL,
	hire_date DATE NOT NULL,
	status VARCHAR(50) DEFAULT 'Active',
	FOREIGN KEY (department_id) REFERENCES Department (department_id)
);

CREATE TABLE Attendance (
	attendance_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	date DATE NOT NULL,
	clock_in TIME,
	clock_out TIME,
	status VARCHAR(50) DEFAULT 'Present',
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id)
);

CREATE TABLE Leave_request (
	leave_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT NOT NULL,
	leave_type VARCHAR(100) NOT NULL,
	leave_days INT NOT NULL,
	status VARCHAR(50) DEFAULT 'Approved',
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id)
);

CREATE TABLE Tax (
	tax_id INT AUTO_INCREMENT PRIMARY KEY,
	tax_rate DECIMAL (5,2) NOT NULL,
	min_salary INT NOT NULL,
	max_salary INT NOT NULL
);

CREATE TABLE Salary (
	salary_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	basic_salary INT,
	extra_hours INT DEFAULT 0,
	hourly_rate DECIMAL (10,2) NOT NULL,
	effective_date DATE,
	status VARCHAR(50) DEFAULT 'Active',
	tax_id INT,
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id),
	FOREIGN KEY (tax_id) REFERENCES Tax (tax_id)
);

CREATE TABLE Payslip (
	payslip_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	pay_period VARCHAR(100) NOT NULL,
	basic_salary INT NOT NULL,
	total_benefits DECIMAL(10,2) NOT NULL,
	total_deductions DECIMAL(10,2) NOT NULL,
	total_tax DECIMAL(10,2) NOT NULL,
	net_salary DECIMAL(10,2) NOT NULL,
	generated_date DATE NOT NULL,
	status VARCHAR(50) DEFAULT 'generated',
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id)
);

CREATE TABLE Deductions (
	deduction_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	deduction_type VARCHAR(50) NOT NULL,
	amount DECIMAL(10,2) NOT NULL,
	total_deductions DECIMAL (10,2) NOT NULL,
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id)
);

CREATE TABLE Benefits (
	benefit_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	benefit_type VARCHAR(100),
	amount DECIMAL (10,2) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id)
);

CREATE TABLE Transactions (
	transaction_id INT AUTO_INCREMENT PRIMARY KEY,
	staff_id INT,
	payslip_id INT,
	amount_paid DECIMAL (10,2) NOT NULL,
	payment_date DATE NOT NULL,
	payment_method VARCHAR(100) NOT NULL,
	status VARCHAR(50) DEFAULT 'Pending',
	reference_no VARCHAR(100) NOT NULL UNIQUE,
	FOREIGN KEY (staff_id) REFERENCES Employee (staff_id),
	FOREIGN KEY (payslip_id) REFERENCES Payslip (payslip_id)
);