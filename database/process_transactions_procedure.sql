DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `salary_managament_system`.`Process Transaction`(
	IN p_staff_id INT,
    IN p_payslip_id INT,
    IN p_amount_paid DECIMAL(10,2),
    IN p_payment_method VARCHAR(100),
    IN p_reference_no VARCHAR(100)
)
BEGIN
	 INSERT INTO Transactions (staff_id, payslip_id, amount_paid, payment_date, payment_method, status, reference_no)
    VALUES (p_staff_id, p_payslip_id, p_amount_paid, NOW(), p_payment_method, 'Completed', p_reference_no);
END $$

DELIMITER ;

CALL `Process Transaction`(3, 3, 141000.00, 'Bank Transfer', 'BT123456');
CALL `Process Transaction`(5, 1, 65500.00, 'Bank Transfer', 'BT789012');


