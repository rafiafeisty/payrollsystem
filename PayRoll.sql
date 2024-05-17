select *from Employee;
select *from Bonus;
select *from Salary;
select *from Attendance;


create table Employee(Empid int not null primary key identity(1,1),EmpName varchar(30) not null, EmpGen varchar(30) not null,
EmpDOB date not null, EmpPhone varchar(50) not null, EmpAdd varchar(100) not null, EmpPos varchar(50) not null,
JoinDate date not null, EmpQual varchar(50) not null, EmpBasSal int not null);

create table Attendance(AttNum int primary key identity(10,1), EmpId int foreign key references Employee(Empid) not null, EmpName varchar(50) not null, 
DayPres int not null, DayAbs int not null, DayExcused int not null, Period varchar(50) not null);

create table Bonus(BId int primary key identity(100,1), BName varchar(50) not null, BAmt int not null);

create table Salary(SalNum int primary key identity(1000,1), EmpId int foreign key references Employee (Empid) not null, EmpName varchar(50) not null, EmpBasSale int not null,
EmpBonus int not null, EmpAdvance int not null, EmpTax int not null, EmpBalance int not null, SalPeriod varchar(50) not null);


-- Insert 10 employee data into Employee table
INSERT INTO Employee (EmpName, EmpGen, EmpDOB, EmpPhone, EmpAdd, EmpPos, JoinDate, EmpQual, EmpBasSal)
VALUES
    ('John Doe', 'Male', '1990-05-15', '1234567890', '123 Main St, Anytown, USA', 'Manager', '2020-01-15', 'MBA', 50000),
    ('Jane Smith', 'Female', '1995-08-20', '0987654321', '456 Elm St, Othertown, USA', 'Developer', '2019-03-10', 'BSc', 40000),
    ('Alice Johnson', 'Female', '1988-11-10', '1357924680', '789 Oak St, Somewhere, USA', 'HR', '2021-02-28', 'MA', 45000),
    ('Bob Brown', 'Male', '1985-04-25', '2468013579', '101 Pine St, Nowhere, USA', 'Analyst', '2018-07-20', 'BEng', 48000),
    ('Emily Davis', 'Female', '1992-09-30', '9876543210', '222 Cedar St, Anytown, USA', 'Designer', '2022-05-05', 'BFA', 42000),
    ('Michael Wilson', 'Male', '1993-06-12', '0123456789', '333 Maple St, Othertown, USA', 'Sales', '2017-11-18', 'BA', 38000),
    ('Sarah Martinez', 'Female', '1987-03-08', '5432167890', '444 Walnut St, Somewhere, USA', 'Accountant', '2023-04-01', 'CPA', 55000),
    ('David Taylor', 'Male', '1980-12-05', '6789012345', '555 Birch St, Nowhere, USA', 'Manager', '2016-09-22', 'MSc', 60000),
    ('Karen Brown', 'Female', '1996-07-18', '8901234567', '666 Oak St, Anytown, USA', 'Developer', '2020-08-12', 'BEng', 43000),
    ('Steven Anderson', 'Male', '1983-02-14', '2345678901', '777 Pine St, Othertown, USA', 'HR', '2019-10-30', 'MA', 47000);

-- Insert 10 employee data into Attendance table
INSERT INTO Attendance (EmpId, EmpName, DayPres, DayAbs, DayExcused, Period)
VALUES
    (1, 'John Doe', 20, 5, 0, 'January 2024'),
    (2, 'Jane Smith', 22, 3, 1, 'January 2024'),
    (3, 'Alice Johnson', 21, 4, 0, 'January 2024'),
    (4, 'Bob Brown', 20, 6, 0, 'January 2024'),
    (5, 'Emily Davis', 22, 2, 1, 'January 2024'),
    (6, 'Michael Wilson', 19, 7, 0, 'January 2024'),
    (7, 'Sarah Martinez', 21, 3, 1, 'January 2024'),
    (8, 'David Taylor', 20, 4, 0, 'January 2024'),
    (9, 'Karen Brown', 21, 5, 0, 'January 2024'),
    (10, 'Steven Anderson', 22, 6, 0, 'January 2024');

-- Insert 10 records into Bonus table (Assuming you have some predefined bonus records)
INSERT INTO Bonus (BName, BAmt)
VALUES
    ('Christmas Bonus', 1000),
    ('Performance Bonus', 1500),
    ('Sales Bonus', 800),
    ('Team Bonus', 1200),
    ('Quarterly Bonus', 900),
    ('Annual Bonus', 2000),
    ('Achievement Bonus', 1800),
    ('Recognition Bonus', 1300),
    ('Merit Bonus', 1100),
    ('Incentive Bonus', 1700);

-- Insert 10 records into Salary table (Assuming you have some predefined salary records)
INSERT INTO Salary (EmpId, EmpName, EmpBasSale, EmpBonus, EmpAdvance, EmpTax, EmpBalance, SalPeriod)
VALUES
    (1, 'John Doe', 50000, 1000, 200, 10000, 38900, 'January 2024'),
    (2, 'Jane Smith', 40000, 1500, 150, 8000, 31850, 'January 2024'),
    (3, 'Alice Johnson', 45000, 800, 100, 9000, 35300, 'January 2024'),
    (4, 'Bob Brown', 48000, 1200, 300, 9500, 38000, 'January 2024'),
    (5, 'Emily Davis', 42000, 900, 200, 8500, 33300, 'January 2024'),
    (6, 'Michael Wilson', 38000, 2000, 400, 7000, 29700, 'January 2024'),
    (7, 'Sarah Martinez', 55000, 1800, 500, 12000, 43100, 'January 2024'),
    (8, 'David Taylor', 60000, 1300, 250, 14000, 43250, 'January 2024'),
    (9, 'Karen Brown', 43000, 1100, 150, 9500, 33600, 'January 2024'),
    (10, 'Steven Anderson', 47000, 1700, 300, 10000, 36000, 'January 2024');
