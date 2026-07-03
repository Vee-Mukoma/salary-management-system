DELIMITER $$

CREATE PROCEDURE salary_managament_system.calculateNetSalary(IN p_staff_id INT)
BEGIN
	-- declare variables
	DECLARE v_basicSalary INT;
	DECLARE v_totalBenefits DECIMAL(10,2);
	DECLARE v_totalDeductions DECIMAL(10,2);
	DECLARE v_taxRate INT;
	DECLARE v_netSalary DECIMAL(10,2);
	DECLARE v_totalTax INT;
	

	-- fetch basic salary from Salary table
	SELECT basic_salary
	INTO v_basicSalary
	FROM Salary
	WHERE staff_id = p_staff_id;
	
	-- fetch total deductions from Deduction table
	SELECT SUM(amount)
	INTO v_totalDeductions
	FROM Deductions
	WHERE staff_id = p_staff_id;
	
	-- fetch total benefits from Benefits table
	SELECT SUM(amount)
	INTO v_totalBenefits
	FROM Benefits
	WHERE staff_id = p_staff_id;
	
	-- fetch total tax from Tax table
	SELECT tax_rate
	INTO v_taxRate
	FROM Tax
	WHERE min_salary <= v_basicSalary AND max_salary >= v_basicSalary;
	
	-- calculate total tax
	SET v_totalTax = (v_basicSalary * v_taxRate) / 100;
	
	-- calculate net salary
	SET v_netSalary = v_basicSalary + v_totalBenefits - v_totalDeductions - v_totalTax;
	
	INSERT INTO Net_Salary (staff_id, basic_salary, total_benefits, total_deductions, total_tax, net_salery)
	VALUES (p_staff_id, v_basicSalary, v_totalDeductions, v_totalTax, v_netSalary);
	
END $$

DELIMITER ;