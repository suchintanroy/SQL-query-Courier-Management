--Task 1
CREATE TABLE [User] (
    UserID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    ContactNumber VARCHAR(20),
    Address TEXT
);

CREATE TABLE Courier (
    CourierID INT PRIMARY KEY,
    SenderName VARCHAR(255),
    SenderAddress TEXT,
    ReceiverName VARCHAR(255),
    ReceiverAddress TEXT,
    Weight DECIMAL(5, 2),
    Status VARCHAR(50),
    TrackingNumber VARCHAR(20) UNIQUE,
    DeliveryDate DATE
);

CREATE TABLE CourierServices (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(100),
    Cost DECIMAL(8, 2)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ContactNumber VARCHAR(20),
    Role VARCHAR(50),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Location (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    CourierID INT,
    LocationID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);
-- Inserting values into the User table
INSERT INTO [User] (UserID, Name, Email, Password, ContactNumber, Address)
VALUES
(1, 'rahul', 'rahul@example.com', 'password123', '1234567890', '123 Main St'),
(2, 'ram', 'ram@example.com', 'password456', '0987654321', '456 Elm St'),
(3, 'Alice', 'alice@example.com', 'password789', '5551234567', '789 Oak St'),
(4, 'bully', 'bully@example.com', 'passwordabc', '9876543210', '321 Pine St'),
(5, 'rakesh', 'rakesh@example.com', 'passworddef', '4567890123', '654 Cedar St'),
(6, 'sameer', 'sameer@example.com', 'passwordghi', '3216549870', '987 Birch St'),
(7, 'ganesh', 'ganesh@example.com', 'passwordjkl', '7890123456', '741 Maple St'),
(8, 'sai', 'sai@example.com', 'passwordmno', '1357924680', '369 Walnut St'),
(9, 'tharun', 'tharun@example.com', 'passwordpqr', '2468013579', '852 Ash St'),
(10, 'meher', 'meher@example.com', 'passwordstu', '3692581470', '258 Cherry St');


-- Inserting values into the Courier table
INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate) 
VALUES 
(1, 'rahul', '123 Main St', 'Rajesh Patel', '332 Elm St', 2.50, 'In Transit', 'ABC123', '2024-04-26'),
(2, 'ram', '789 Oak St', 'Priya Sharma', '321 Pine St', 1.80, 'Delivered', 'DEF456', '2024-04-24'),
(3, 'Alice', '654 Cedar St', 'Neha Gupta', '987 Birch St', 3.20, 'Pending', 'GHI789', '2024-04-25'),
(4, 'bully', '741 Maple St', 'Rohan Kumar', '369 Walnut St', 4.50, 'In Transit', 'JKL012', '2024-04-27'),
(5, 'rakesh', '852 Ash St', 'Ananya Choudhury', '258 Cherry St', 2.00, 'Delivered', 'MNO345', '2024-04-23'),
(6, 'sameer', '123 Main St', 'Vikram Verma', '654 Cedar St', 1.50, 'Pending', 'PQR678', '2024-04-28'),
(7, 'ganesh', '789 Oak St', 'Sarah Garcia', '741 Maple St', 2.80, 'In Transit', 'STU901', '2024-04-25'),
(8, 'sai', '987 Birch St', 'Pooja Desai', '852 Ash St', 3.00, 'Delivered', 'VWX234', '2024-04-22'),
(9, 'tharun', '369 Walnut St', 'Siddharth Mehta', '123 Main St', 1.20, 'Pending', 'YZA567', '2024-04-29'),
(10, 'meher', '258 Cherry St', 'Ayesha Banerjee', '789 Oak St', 2.70, 'In Transit', 'BCD890', '2024-04-30');


-- Inserting values into the CourierServices table
INSERT INTO CourierServices (ServiceID, ServiceName, Cost) 
VALUES 
(1, 'Standard Delivery', 10.00),
(2, 'Express Delivery', 20.00),
(3, 'Same Day Delivery', 30.00),
(4, 'Overnight Delivery', 15.00),
(5, 'International Delivery', 50.00),
(6, 'Priority Delivery', 25.00),
(7, 'Economy Delivery', 8.00),
(8, 'Next Day Delivery', 12.00),
(9, 'Two-Day Delivery', 18.00),
(10, 'Signature Confirmation', 5.00);

-- Inserting values into the Employee table
INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary) 
VALUES 
(1, 'kamlesh', 'kamlesh@example.com', '1234567890', 'Manager', 60000.00),
(2, 'kaalu', 'kaalu@example.com', '0987654321', 'Sales Associate', 40000.00),
(3, 'bubba', 'bubba@example.com', '5551234567', 'Delivery Driver', 35000.00),
(4, 'randyorton', 'orton@example.com', '9876543210', 'Customer Service Representative', 38000.00),
(5, 'james', 'james@example.com', '4567890123', 'Warehouse Supervisor', 45000.00),
(6, 'gaurav', 'gaurav@example.com', '3216549870', 'Dispatcher', 42000.00),
(7, 'sujan', 'sujan@example.com', '7890123456', 'Courier', 38000.00),
(8, 'roy', 'eroy@example.com', '1357924680', 'Operations Manager', 65000.00),
(9, 'ramesh', 'ramesh@example.com', '2468013579', 'IT Specialist', 50000.00),
(10, 'mamu', 'mamu@example.com', '3692581470', 'Accountant', 55000.00);

-- Inserting values into the Location table
INSERT INTO Location (LocationID, LocationName, Address) 
VALUES 
(1, '332 Elm St', '123 Corporate Blvd'),
(2, '321 Pine St', '456 Industrial Ave'),
(3, '987 Birch St', '789 Main St'),
(4, '369 Walnut St', '321 Logistics Dr'),
(5, '258 Cherry St', '654 Commercial St'),
(6, '654 Cedar St', '987 Service Rd'),
(7, '741 Maple St', '741 Tech Ave'),
(8, '852 Ash St', '369 Education Blvd'),
(9, '123 Main St', '852 Repair St'),
(10, '789 Oak St', '258 Innovation Dr');


-- Inserting values into the Payment table
INSERT INTO Payment (PaymentID, CourierID, LocationID, Amount, PaymentDate) 
VALUES 
(1, 1, 2, 15.00, '2024-03-25'),
(2, 2, 3, 20.00, '2024-03-24'),
(3, 3, 4, 12.00, '2024-03-26'),
(4, 4, 5, 18.00, '2024-03-26'),
(5, 5, 6, 25.00, '2024-03-23'),
(6, 6, 7, 8.00, '2024-03-28'),
(7, 7, 8, 30.00, '2024-03-27'),
(8, 8, 9, 10.00, '2024-03-22'),
(9, 9, 10, 22.00, '2024-03-29'),
(10, 10, 1, 28.00, '2024-03-28');

--Altering the courier table as per the questions
--adding  serviceid foreign key to courier table
alter table courier add service_id int;
--adding  User id foreign key to courier table
alter table courier add user_id int;
--adding  employee foreign key to courier table
alter table courier add employee_id int;

alter table Courier add constraint FK_Courier_Employee
foreign key (employee_id) references Employee(EmployeeID);
alter table Courier add constraint FK_Courier_Service
foreign key (service_id) references CourierServices(ServiceID);
alter table Courier add constraint FK_Courier_User
foreign key (user_id) references [User](UserID);

--TASK 2
select * from Payment
--1. List all customers: 
select * from [User];
--2. List all orders for a specific customer: 
select * from Courier where SenderName ='rahul'
--3.List all couriers:
SELECT * FROM Courier;
--4.List all packages for a specific order:
SELECT * FROM Courier WHERE CourierID = '1';
--5. List all deliveries for a specific courier:
SELECT * FROM Courier WHERE CourierID = '5';

--6. List all undelivered packages:
SELECT * FROM Courier WHERE Status <> 'Delivered';

--7. List all packages that are scheduled for delivery today:
SELECT * FROM Courier WHERE DeliveryDate = CAST(GETDATE() AS DATE);

--8. List all packages with a specific status:
SELECT * FROM Courier WHERE Status = 'Delivered';

--9. Calculate the total number of packages for each  courierservice:
SELECT 
    CourierServices.ServiceID,
    CourierServices.ServiceName,
    COUNT(Courier.CourierID) AS TotalCouriers
FROM 
    CourierServices
LEFT JOIN 
    Courier ON CourierServices.ServiceID = Courier.service_id
GROUP BY 
    CourierServices.ServiceID, CourierServices.ServiceName;

--10. Find the average delivery time for each courier
SELECT CourierID, AVG(DATEDIFF(day,DeliveryDate,GETDATE())) AS AvgDeliveryTime FROM Courier GROUP BY CourierID;

--11. List all packages with a specific weight range:
SELECT * FROM Courier WHERE Weight BETWEEN 1.50 AND 3.00;

--12. Retrieve employees whose names contain 'John'
SELECT * FROM Employee WHERE Name LIKE '%John%';

--13. Retrieve all courier records with payments greater than $50. 
SELECT CourierID FROM Payment WHERE Amount > 50.00;

--TASK - 3
--*14. Find the total number of couriers handled by each employee. 
SELECT Employee.EmployeeID, Employee.Name, COUNT(Courier.CourierID) AS TotalCouriersHandled
FROM Employee
LEFT JOIN Courier ON Employee.EmployeeID = Courier.employee_id
GROUP BY Employee.EmployeeID, Employee.Name;

--15. Calculate the total revenue generated by each location 

SELECT
    l.LocationID,
  
    SUM(p.Amount) AS TotalRevenue
FROM
    Location l
JOIN
    Payment p ON l.LocationID = p.LocationID
GROUP BY
    l.LocationID
    

--16. Find the total number of couriers delivered to each location. 
SELECT
    l.LocationID,
    l.LocationName,COUNT(c.CourierID) AS TotalCouriersDelivered
FROM
    Location l
JOIN
    Courier c ON l.LocationName = CAST(c.ReceiverAddress AS VARCHAR(255))
WHERE
    c.Status = 'Delivered'
GROUP BY
    l.LocationID,
    l.LocationName;
--17. Find the courier with the highest average delivery time: 
SELECT TOP 1
    CourierID,
    AVG(DATEDIFF(day, DeliveryDate, GETDATE())) AS AvgDeliveryTime
FROM
    Courier
GROUP BY
    CourierID
ORDER BY
    AvgDeliveryTime DESC;
--*18. Find Locations with Total Payments Less Than a Certain Amount
SELECT LocationID, SUM(Amount) AS TotalPayments
FROM Payment
GROUP BY LocationID
HAVING SUM(Amount) < 30;
--19. Calculate Total Payments per Location
SELECT
    l.LocationID,
    l.LocationName,
    SUM(p.Amount) AS TotalPayments
FROM
    Location l
LEFT JOIN
    Payment p ON l.LocationID = p.LocationID
GROUP BY
    l.LocationID,
    l.LocationName;
--20. Retrieve couriers who have received payments totaling more than $1000 in a specific location (LocationID = X):
 SELECT
    c.CourierID
FROM
    Courier c
JOIN
    (
    SELECT
        CourierID,
        SUM(Amount) AS TotalPayments
    FROM
        Payment
    WHERE
        LocationID = 8
    GROUP BY
        CourierID
    HAVING
        SUM(Amount) > 28
    ) AS TotalPaymentsPerCourier
ON
    c.CourierID = TotalPaymentsPerCourier.CourierID;
--21. Retrieve couriers who have received payments totaling more than $1000 after a certain date (PaymentDate > 'YYYY-MM-DD'):
SELECT
  c.CourierID
FROM
    Courier c
JOIN
    (
    SELECT
        CourierID,
        SUM(Amount) AS TotalPayments
    FROM
        Payment
    WHERE
        PaymentDate > '2024-04-26'
    GROUP BY
        CourierID
    HAVING
        SUM(Amount) > 28
    ) AS TotalPaymentsPerCourier
ON
    c.CourierID = TotalPaymentsPerCourier.CourierID;


--22: Retrieve locations where the total amount received is more than $5000 before a certain date (PaymentDate > 'YYYY-MM-DD'):
SELECT
    l.LocationID
FROM
    Location l
JOIN
    (
    SELECT
        LocationID,
        SUM(Amount) AS TotalAmountReceived
    FROM
        Payment
    WHERE
        PaymentDate > '2024-04-26'
    GROUP BY
        LocationID
    HAVING
        SUM(Amount) > 28
    ) AS TotalAmountPerLocation
ON
    l.LocationID = TotalAmountPerLocation.LocationID;

--TASK 4

--23. Retrieve Payments with Courier Information
SELECT
    p.*,
    c.*
FROM
    Payment p
JOIN
    Courier c ON p.CourierID = c.CourierID;


--24. Retrieve Payments with Location Information
SELECT
    p.*,
    l.*
FROM
    Payment p
JOIN
    Location l ON p.LocationID = l.LocationID;


--25. Retrieve Payments with Courier and Location Information
SELECT
    p.*,
    c.*,
    l.*
FROM
    Payment p
JOIN
    Courier c ON p.CourierID = c.CourierID
JOIN
    Location l ON p.LocationID = l.LocationID;


--26. List all payments with courier details
SELECT
    p.*,
    c.*
FROM
    Payment p
JOIN
    Courier c ON p.CourierID = c.CourierID;


--27. Total payments received for each courier
SELECT
    c.CourierID,

    SUM(p.Amount) AS TotalPaymentsReceived
FROM
    Courier c
LEFT JOIN
    Payment p ON c.CourierID = p.CourierID
GROUP BY
    c.CourierID
  


--28. List payments made on a specific date
SELECT *
FROM Payment
WHERE PaymentDate = '2024-04-26';

--29. Get Courier Information for Each Payment
SELECT
    p.*,
    c.*
FROM
    Payment p
JOIN
    Courier c ON p.CourierID = c.CourierID;

--30. Get Payment Details with Location
SELECT
    p.*,
    l.*
FROM
    Payment p
JOIN
    Location l ON p.LocationID = l.LocationID;


--31. Calculating Total Payments for Each Courier
SELECT 
CourierID,
SUM(Amount) AS TotalPayment
FROM 
Payment
GROUP BY
CourierID;
--32. List Payments Within a Date Range
SELECT *
FROM Payment
WHERE PaymentDate BETWEEN '2024-03-01' AND '2024-03-31';

--33*. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side
SELECT *
FROM [User] U
FULL OUTER JOIN Courier C ON U.UserID = C.user_id;

--34.Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side:
SELECT *
FROM Courier C
FULL OUTER JOIN CourierServices CS ON C.service_id = CS.ServiceID;

--35.Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side:
SELECT
    Employee.EmployeeID,
    Employee.Name AS EmployeeName,
    Payment.PaymentID,
    Payment.Amount,
    Payment.PaymentDate
FROM
    Employee 
FULL OUTER JOIN courier C ON C.employee_id = employee.EmployeeID
full outer join payment  ON payment.CourierID =C.CourierID;


--36. List all users and all courier services, showing all possible combinations.
SELECT
  u.*,
  cs.*
FROM
    [User] u
CROSS JOIN
    CourierServices cs;


--37. List all employees and all locations, showing all possible combinations:
SELECT
   e.*,
   l.*
FROM
    Employee e
CROSS JOIN
    Location l;


--38. Retrieve a list of couriers and their corresponding sender information (if available)
SELECT *
FROM Courier C
LEFT JOIN [User] U ON C.SenderName = U.Name;


--39. Retrieve a list of couriers and their corresponding receiver information (if available):
SELECT *
FROM Courier C
LEFT JOIN [User] U ON C.ReceiverName = U.Name;


--40.Retrieve a list of couriers along with the courier service details (if available):
SELECT *
FROM Courier C
LEFT JOIN CourierServices CS ON C.service_id = CS.ServiceID;

--41.Retrieve a list of employees and the number of couriers assigned to each employee:
SELECT
    Employee.EmployeeID,
    Employee.Name AS EmployeeName,
    COUNT(Courier.CourierID) AS NumberOfCouriers
FROM
    Employee
LEFT JOIN
    Courier ON Employee.EmployeeID = Courier.employee_id
GROUP BY
    Employee.EmployeeID,
    Employee.Name;

--42.Retrieve a list of locations and the total payment amount received at each location:
SELECT
    Location.LocationID,
    Location.LocationName,
    SUM(Payment.Amount) AS TotalPaymentAmount
FROM
    Location
LEFT JOIN
    Payment ON Location.LocationID = Payment.LocationID
GROUP BY
    Location.LocationID,
    Location.LocationName;
--43. Retrieve all couriers sent by the same sender (based on SenderName).
SELECT *
FROM Courier
WHERE SenderName IN (SELECT SenderName FROM Courier WHERE CourierID = CourierID);

--44. List all employees who share the same role.
SELECT *
FROM Employee
WHERE Role IN (SELECT Role FROM Employee GROUP BY Role HAVING COUNT(*) > 1);

--45. Retrieve all payments made for couriers sent from the same location.
SELECT *
FROM payment
WHERE courierid IN (
    SELECT C1.CourierID
    FROM Courier C1
    JOIN Courier C2 ON CAST(C1.SenderAddress AS VARCHAR) = CAST(C2.SenderAddress AS VARCHAR)
    WHERE C1.CourierID <> C2.CourierID
);

--46. Retrieve all couriers sent from the same location (based on SenderAddress). 
SELECT *
FROM Courier C1
JOIN Courier C2 ON cast(C1.SenderAddress as varchar) = cast(C2.SenderAddress as varchar)
WHERE C1.CourierID <> C2.CourierID;


--47. List employees and the number of couriers they have delivered:
SELECT employee_id, COUNT(*) AS NumberOfCouriersDelivered
FROM Courier
GROUP BY employee_id;

--48. Find couriers that were paid an amount greater than the cost of their respective courier services 
SELECT c.*
FROM Courier c
JOIN CourierServices cs ON c.service_id = cs.ServiceID
JOIN Payment p ON c.CourierID = p.CourierID
WHERE p.Amount > cs.Cost;


--49. Find couriers that have a weight greater than the average weight of all couriers
SELECT *
FROM Courier
WHERE Weight > (SELECT AVG(Weight) FROM Courier);

--50. Find the names of all employees who have a salary greater than the average salary:\
SELECT Name
FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

--51. Find the total cost of all courier services where the cost is less than the maximum cost 
SELECT SUM(Cost) AS TotalCost
FROM CourierServices
WHERE Cost < (SELECT MAX(Cost) FROM CourierServices);

--52. Find all couriers that have been paid for 
SELECT c.*
FROM Courier c
INNER JOIN Payment p ON c.CourierID = p.CourierID;


--53. Find the locations where the maximum payment amount was made 
SELECT LocationID
FROM Payment
WHERE Amount = (SELECT MAX(Amount) FROM Payment);


--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender
SELECT *
FROM Courier
WHERE Weight > ALL (SELECT Weight FROM Courier WHERE SenderName = 'rahul')




