SELECT * FROM Employee;

INSERT INTO Department (department_name)
VALUES 
('Management'),
('Development'),
('Human Resources'),
('Finance'),
('IT Support');


INSERT INTO Tax (tax_rate, min_salary, max_salary)
VALUES
(0.00, 0, 24999),
(10.00, 25000, 49999),
(15.00, 50000, 74999),
(20.00, 75000, 99999),
(25.00, 100000, 149999),
(30.00, 150000, 999999);


INSERT INTO Employee (first_name, last_name, age, id_no, phone_no, email, department_id, role, hire_date)
VALUES
('Grace', 'Wanjiku', 28, 31245678, 0723456789, 'grace.wanjiku@techcore.co.ke', 2, 'Software Developer', '2022-01-10'),
('Kevin', 'Otieno', 26, 33456789, 0734567890, 'kevin.otieno@techcore.co.ke', 2, 'Frontend Developer', '2023-05-20'),
('Faith', 'Achieng', 30, 29876543, 0745678901, 'faith.achieng@techcore.co.ke', 3, 'HR Officer', '2021-09-01'),
('David', 'Kimani', 35, 27654321, 0756789012, 'david.kimani@techcore.co.ke', 4, 'Accountant', '2020-07-14'),
('Sharon', 'Njeri', 24, 35678901, 0767890123, 'sharon.njeri@techcore.co.ke', 2, 'UI/UX Designer', '2024-02-12'),
('James', 'Kiptoo', 29, 30123456, 0778901234, 'james.kiptoo@techcore.co.ke', 5, 'IT Support Specialist', '2022-08-22'),
('Mercy', 'Atieno', 27, 32345678, 0789012345, 'mercy.atieno@techcore.co.ke', 2, 'Backend Developer', '2023-03-18'),
('Samuel', 'Mutua', 32, 28901234, 0790123456, 'samuel.mutua@techcore@co.ke', 1, 'Project Manager', '2021-11-05'),
('Esther', 'Chebet', 25, 34567890, 0701234567, 'esther.chebet@techcore.co.ke', 5, 'Help Desk Officer', '2024-01-08'),
('Peter', 'Maina', 33, 27890123, 071345679, 'peter.maina@techcore.co.ke', 2, 'Senior Developer', '2020-04-27'),
('Lilian', 'Wairimu', 29, 31456789, 0724567890, 'lilian.wairimu@techcore.co.ke', 4, 'Finance Officer', '2022-06-15'),
('Collins', 'Ouma', 27, 33678901, 0735678901, 'collins.ouma@techcore.co.ke', 5, 'Network Administrator', '2023-09-11'),
('Diana', 'Muthoni', 34, 26789012, 0746789012, 'diana.muthoni@techcore.co.ke', 3, 'HR Manager', '2019-12-02'),
('Eric', 'Karanja', 28, 32987654, 0757890123, 'eric.karanja@techcore.co.ke', 2, 'Full Stack Developer', '2024-03-04');

INSERT INTO Attendance (staff_id, date, clock_in, clock_out)
VALUES
(3, '2026-07-01', '08:00:00', '17:00:00'),
(4, '2026-07-01', '08:15:00', '17:30:00'),
(5, '2026-07-01', '07:55:00', '16:45:00'),
(6, '2026-07-01', '08:05:00', '17:10:00'),
(7, '2026-07-01', '08:00:00', '17:00:00'),
(8, '2026-07-01', '08:20:00', '17:15:00'),
(9, '2026-07-01', '07:50:00', '16:50:00'),
(10, '2026-07-01', '08:10:00', '17:05:00'),
(11, '2026-07-01', '08:00:00', '18:00:00'),
(12, '2026-07-01', '08:30:00', '17:00:00'),
(13, '2026-07-01', '07:45:00', '17:15:00'),
(14, '2026-07-01', '08:00:00', '16:30:00'),
(15, '2026-07-01', '08:05:00', '17:20:00'),
(16, '2026-07-01', '07:55:00', '17:00:00'),
(17, '2026-07-01', '08:10:00', '17:10:00');

INSERT INTO Benefits (staff_id, benefit_type, amount, start_date, end_date)
VALUES
(3, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(3, 'Transport Allowance', 8000.00, '2026-01-01', '2026-12-31'),
(3, 'Performance Bonus', 25000.00, '2026-01-01', '2026-12-31'),
(4, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(4, 'Internet Allowance', 5000.00, '2026-01-01', '2026-12-31'),
(5, 'Internet Allowance', 5000.00, '2026-01-01', '2026-12-31'),
(5, 'Remote Work Stipend', 10000.00, '2026-01-01', '2026-12-31'),
(6, 'Housing Allowance', 25000.00, '2026-01-01', '2026-12-31'),
(6, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(7, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(7, 'Meal Allowance', 6000.00, '2026-01-01', '2026-12-31'),
(8, 'Professional Development Fund', 20000.00, '2026-01-01', '2026-12-31'),
(8, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(9, 'Airtime Allowance', 3000.00, '2026-01-01', '2026-12-31'),
(9, 'Transport Allowance', 8000.00, '2026-01-01', '2026-12-31'),
(10, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(10, 'Performance Bonus', 30000.00, '2026-01-01', '2026-12-31'),
(11, 'Housing Allowance', 20000.00, '2026-01-01', '2026-12-31'),
(11, 'Internet Allowance', 5000.00, '2026-01-01', '2026-12-31'),
(12, 'Housing Allowance', 20000.00, '2026-01-01', '2026-12-31'),
(12, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(13, 'Meal Allowance', 6000.00, '2026-01-01', '2026-12-31'),
(13, 'Airtime Allowance', 3000.00, '2026-01-01', '2026-12-31'),
(14, 'Professional Development Fund', 25000.00, '2026-01-01', '2026-12-31'),
(14, 'Remote Work Stipend', 10000.00, '2026-01-01', '2026-12-31'),
(15, 'Medical Cover', 18000.00, '2026-01-01', '2026-12-31'),
(15, 'Health Insurance', 15000.00, '2026-01-01', '2026-12-31'),
(16, 'Transport Allowance', 8000.00, '2026-01-01', '2026-12-31'),
(17, 'Transport Allowance', 8000.00, '2026-01-01', '2026-12-31'),
(17, 'Performance Bonus', 35000.00, '2026-01-01', '2026-12-31');

INSERT INTO Deductions (staff_id, deduction_type, amount)
VALUES
(3, 'PAYE Tax', 25000.00),
(3, 'Pension Contribution', 5000.00),
(3, 'Insurance Premium', 3000.00),
(4, 'PAYE Tax', 18000.00),
(4, 'NSSF', 2160.00),
(5, 'PAYE Tax', 15000.00),
(5, 'SHIF', 2500.00),
(6, 'PAYE Tax', 30000.00),
(6, 'Pension Contribution', 7000.00),
(7, 'PAYE Tax', 12000.00),
(7, 'NSSF', 2160.00),
(8, 'PAYE Tax', 17000.00),
(8, 'Staff Loan Repayment', 10000.00),
(9, 'PAYE Tax', 20000.00),
(9, 'SACCO Contribution', 5000.00),
(10, 'PAYE Tax', 35000.00),
(10, 'Pension Contribution', 8000.00),
(11, 'PAYE Tax', 22000.00),
(11, 'Salary Advance Recovery', 5000.00),
(12, 'PAYE Tax', 16000.00),
(12, 'NSSF', 2160.00),
(13, 'PAYE Tax', 14000.00),
(13, 'Welfare Contribution', 1000.00),
(14, 'PAYE Tax', 28000.00),
(14, 'SACCO Contribution', 7000.00),
(15, 'PAYE Tax', 19000.00),
(15, 'Insurance Premium', 4000.00),
(16, 'PAYE Tax', 13000.00),
(17, 'PAYE Tax', 32000.00),
(17, 'Pension Contribution', 9000.00);

INSERT INTO Leave_request (staff_id, leave_type, leave_days)
VALUES
(3, 'Annual Leave', 14),
(3, 'Sick Leave', 3),
(4, 'Annual Leave', 21),
(4, 'Emergency Leave', 2),
(5, 'Sick Leave', 5),
(5, 'Study Leave', 7),
(6, 'Annual Leave', 10),
(6, 'Compassionate Leave', 4),
(7, 'Annual Leave', 15),
(7, 'Sick Leave', 2),
(8, 'Study Leave', 10),
(8, 'Annual Leave', 12),
(9, 'Emergency Leave', 1),
(9, 'Annual Leave', 14),
(10, 'Annual Leave', 18),
(10, 'Sick Leave', 3),
(11, 'Annual Leave', 14),
(11, 'Unpaid Leave', 5),
(12, 'Annual Leave', 20),
(12, 'Sick Leave', 2),
(13, 'Compassionate Leave', 3),
(13, 'Annual Leave', 10),
(14, 'Study Leave', 14),
(14, 'Annual Leave', 7),
(15, 'Maternity Leave', 90),
(15, 'Annual Leave', 5),
(16, 'Paternity Leave', 14),
(16, 'Annual Leave', 10),
(17, 'Annual Leave', 21),
(17, 'Sick Leave', 4);

INSERT INTO Salary (staff_id, basic_salary, tax_id)
VALUES
(3, 180000.00, 6),
(4, 95000.00, 4),
(5, 85000.00, 4),
(6, 120000.00, 5),
(7, 140000.00, 5),
(8, 70000.00, 3),
(9, 65000.00, 3),
(10, 150000.00, 6),
(11, 160000.00, 6),
(12, 55000.00, 3),
(13, 130000.00, 5),
(14, 90000.00, 4),
(15, 80000.00, 4),
(16, 75000.00, 4),
(17, 145000.00, 5);



