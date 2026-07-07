DELIMITER $$

CREATE PROCEDURE salary_managament_system.employeeReport(IN p_staff_id INT)
BEGIN
	SELECT e.staff_id, e.first_name, e.last_name, d.department_id, p.basic_salary, p.total_benefits, p.total_deductions, p.total_tax, p.net_salary
	FROM Employee e
	JOIN Department d ON e.department_id = d.department_id
	JOIN Payslip p ON  e.staff_id = p.staff_id
	WHERE e.staff_id = p.staff_id;
END $$
DELIMITER ;