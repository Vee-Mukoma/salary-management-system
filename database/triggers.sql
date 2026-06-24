USE salary_managament_system;

CREATE TRIGGER after_employee_insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
	INSERT INTO Salary (staff_id, basic_salary, extra_hours, hourly_rate, effective_date, status, tax_id)
	VALUES (NEW.staff_id, 0, 0, 0.00, NOW(), 'Pending', 1);
END;

CREATE TRIGGER after_leave_insert
AFTER INSERT ON Leave_request
FOR EACH ROW
BEGIN
	IF NEW.status = 'Approved' THEN
		INSERT INTO Deductions (staff_id, deduction_type, amount, total_deductions)
		VALUES (NEW.staff_id, 'Leave', 0, 0);
	END IF;
END;

CREATE TRIGGER after_attendance_insert
AFTER INSERT ON Attendance
FOR EACH ROW
BEGIN
	IF NEW.status = 'Absent' THEN
		INSERT INTO Deductions (staff_id, deduction_type, amount, total_deductions)
		VALUES (NEW.staff_id, 'Absence', 0, 0);
	END IF;
END;

CREATE TRIGGER after_transaction_insert
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
	IF NEW.status = 'Paid' THEN
		INSERT INTO Payslip (staff_id, pay_period, basic_salary, total_benefits, total_deductions, total_tax, net_salary, generated_date, status)
		VALUES (NEW.staff_id, 'null', 0, 0, 0, 0, 0, NOW(), 'Paid');
	END IF;
END;
