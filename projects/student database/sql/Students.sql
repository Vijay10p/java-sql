use data;
CREATE TABLE Students (
    registered_num VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);
INSERT INTO Students (registered_num, name, department, date_of_birth) VALUES
('21G001', 'Arun Kumar', 'Mechanical Engineering', '2003-02-14'),
('21G002', 'Karthik S', 'Mechanical Engineering', '2003-05-25'),
('21G003', 'Suresh B', 'Mechanical Engineering', '2003-10-05'),
('21G004', 'Hari Prasad', 'Mechanical Engineering', '2003-09-14'),
('21F001', 'Vikram Raj', 'Civil Engineering', '2002-11-10'),
('21F002', 'Manoj Kumar', 'Civil Engineering', '2003-02-03'),
('21F003', 'Praveen R', 'Civil Engineering', '2003-03-11'),
('21C001', 'Priya Sharma', 'Computer Science Engineering', '2003-07-22'),
('21C002', 'Divya P', 'Computer Science Engineering', '2002-09-12'),
('21C003', 'Lavanya S', 'Computer Science Engineering', '2003-01-09'),
('21C004', 'Sandhya V', 'Computer Science Engineering', '2003-05-02'),
('21E001', 'Meena Devi', 'Electrical Engineering', '2003-04-05'),
('21E002', 'Anitha M', 'Electrical Engineering', '2003-06-15'),
('21E003', 'Nivetha K', 'Electrical Engineering', '2002-11-28'),
('21L001', 'Ravi Kannan', 'Electronics Engineering', '2003-01-30'),
('21L002', 'Gokul Raj', 'Electronics Engineering', '2002-12-09'),
('21L003', 'Aravind K', 'Electronics Engineering', '2003-04-19'),
('21I001', 'Sneha R', 'Information Technology', '2003-03-18'),
('21I002', 'Keerthi L', 'Information Technology', '2003-08-20'),
('21I003', 'Shruthi P', 'Information Technology', '2003-07-07');
select * from Students ;
select * from students where registered_num ='21G115';