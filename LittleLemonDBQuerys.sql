USE littlelemondb;

-- Inserção de dados na tabela Customers	

INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('1', 'Carla ', 'Fernandes', 'Avenida Renata 2001', '999999999', 'carla@fernandes.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('2', 'João ', 'Ribeiro', 'Rua Tocantins', '988888888', 'joao@ribeiro.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('3', 'Malaquias', 'Mirim', 'Rua XV de Novembro 101', '977777777', 'malaquias@mirim.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('4', 'Gina', 'Indelicada', 'Rua Paliteiros 111', '966666666', 'gina@indelicada.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('5', 'Hermanoteu', 'Goda', 'Avenida Micalateia 69', '955555555', 'hermanoteu@goda.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('6', 'Toguro', 'Maromba', 'Alameda Malhacao 24', '944444444', 'toguro@maromba.com');
INSERT INTO `littlelemondb`.`customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `Contact`, `Email`) VALUES ('7', 'Yagami', 'Light', 'Rua Iluminati 666', '933333333', 'yagami@light.com');

-- Inserção de dados tabela Employees

INSERT INTO `littlelemondb`.`employees` (`EmployeeID`, `FullName`, `Role`, `Address`, `Contact`, `Email`, `AnualSalary`) VALUES ('1', 'Henry Quefiaqui', 'Chef', 'Rua Ratattouile 241', '919191919', 'henry@chef.com', '90000');
INSERT INTO `littlelemondb`.`employees` (`EmployeeID`, `FullName`, `Role`, `Address`, `Contact`, `Email`, `AnualSalary`) VALUES ('2', 'Servo Siempre', 'Surchef', 'Alameda Atlantica 321', '920202020', 'servo@sienpre.com', '70000');
INSERT INTO `littlelemondb`.`employees` (`EmployeeID`, `FullName`, `Role`, `Address`, `Contact`, `Email`, `AnualSalary`) VALUES ('3', 'Harold Kumar', 'Waiter', 'Rua da Espera 22', '941414141', 'harold@kumar.com', '40000');
INSERT INTO `littlelemondb`.`employees` (`EmployeeID`, `FullName`, `Role`, `Address`, `Contact`, `Email`, `AnualSalary`) VALUES ('4', 'Karen Kaboom', 'Waiter', 'Avenida C4 444', '924242424', 'karen@kaboom.com', '40000');
INSERT INTO `littlelemondb`.`employees` (`EmployeeID`, `FullName`, `Role`, `Address`, `Contact`, `Email`, `AnualSalary`) VALUES ('5', 'Samantha Passivo', 'Recepcionist', 'Avenida Sapopemba 13600', '912121212', 'sam@passivo.com', '40000');

-- Inserção de dados tabela Bookings

INSERT INTO `littlelemondb`.`bookings` (`BookingID`, `TableNo`, `bSlotDay`, `bSlotTime`, `Guests`, `EmployeeID`, `CustomerID`) VALUES ('1', '10', '2023-11-28', '18:00:00', '2', '4', '1');
INSERT INTO `littlelemondb`.`bookings` (`BookingID`, `TableNo`, `bSlotDay`, `bSlotTime`, `Guests`, `EmployeeID`, `CustomerID`) VALUES ('2', '8', '2023-11-28', '19:00:00', '2', '5', '2');
INSERT INTO `littlelemondb`.`bookings` (`BookingID`, `TableNo`, `bSlotDay`, `bSlotTime`, `Guests`, `EmployeeID`, `CustomerID`) VALUES ('3', '7', '2023-11-29', '18:00:00', '2', '5', '4');
INSERT INTO `littlelemondb`.`bookings` (`BookingID`, `TableNo`, `bSlotDay`, `bSlotTime`, `Guests`, `EmployeeID`, `CustomerID`) VALUES ('4', '9', '2023-11-29', '19:00:00', '4', '5', '5');

-- Inserção de dados na tabela Menu

INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('1', 'Herb Fillet', 'Main course', 'Delicius chicken fillet prepared with herbs', '0', '1', '15.99', '00:20:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('2', 'Ceasar Salad', 'Starter', 'Classic Salad, always a good choice for a starter', '1', '1', '8.99', '00:10:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('3', 'Aussie Cheese Fries', 'Appetizer', 'A favorite among all, stealing the show of main courses', '0', '0', '16.99', '00:15:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('4', 'Crunchy Onion', 'Appetizer', 'The perfect appetizer for happy hours, very, very crunchy', '1', '0', '14.99', '00:15:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('5', 'Parma Fillet', 'Main Course', 'It\'s the pinnacle of italian couisine', '0', '0', '18.99', '00:20:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('6', 'Banana Split', 'Desert', 'Brings you back to sunny school day, it\'s higly refreshing', '0', '0', '12.99', '00:10:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('7', 'Stuffed Potato', 'Starter', 'For absolute potato lovers, served with a homemade butter cream', '1', '0', '9.99', '00:10:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('8', 'Coke', 'Drink', 'Refreshing drink loved by everyone', '1', '1', '4.99', '00:05:00');
INSERT INTO `littlelemondb`.`menu` (`ItemID`, `Name`, `Type`, `Description`, `Vegan`, `Glutenfree`, `Price`, `PrepTime`) VALUES ('9', 'Bottle Water', 'Drink', 'Sometimes the basic is the best', '1', '1', '2.99', '00:05:00');

-- Inserção de dados na tabela Orders

INSERT INTO `littlelemondb`.`orders` (OrderID, TableNo, BookingID, Total, PaymentType) 
VALUES 
(1, 10, 1, NULL, NULL),
(2, 9, 4, NULL, NULL),
(3, 8, 2, NULL, NULL),
(4, 7, 3, NULL, NULL);

-- Inserção de dados na tabela OrdersDetails

INSERT INTO littlelemondb.orderdetails ( OrderID, ItemID, Quantity, Status, e_ID ) 
VALUES 
(1, 1, 1, 'Waiting', 5),
(2, 9, 2, 'Delivered', 5),
(3, 8, 2, 'Delivered', 4),
(4, 7, 2, 'Preparing', 2),
(1, 9, 2, 'Delivered', 4),
(2, 3, 1, 'Preparing', 1),
(3, 8, 2, 'Waiting', 4),
(4, 5, 2, 'Delivered', 5),
(1, 5, 1, 'Preparing', 2),
(3, 8, 2, 'Delivered', 5),
(4, 6, 1, 'Preparing', 1);

-- Criando as views 

CREATE VIEW OrderViews AS 
SELECT OrderID, Items, Total FROM  
	(SELECT od.OrderID AS OrderID, SUM(od.Quantity) AS Items, SUM(m.Price * od.Quantity) AS Total FROM Orderdetails AS od
	INNER JOIN menu as m ON m.ItemID = od.ItemID
	GROUP BY od.OrderID) AS Gambiarra
WHERE Items > 3;
-- DROP VIEW OrderViews;
Select * From OrderViews;

CREATE VIEW Preferidos AS
	SELECT c.customerID, CONCAT(c.FirstName, ' ',c.LastName) AS FullName, o.OrderID, o.Total, m.Name, m.Type  
	FROM customers AS c 
	INNER JOIN Bookings AS b ON c.customerID = b.customerID
	INNER JOIN Orders AS o ON o.bookingID = b.bookingID
	INNER JOIN Orderdetails AS od ON od.OrderID = o. OrderID
	INNER JOIN Menu AS m ON m.ItemID = od.ItemID
	WHERE m.Type = 'Main course'
	GROUP BY c.customerID;

SELECT * From Preferidos;

CREATE VIEW MaisVendidos AS
	SELECT Name FROM Menu
	WHERE itemID >= ANY
		(SELECT m.ItemID FROM Menu AS m 
		INNER JOIN Orderdetails AS od ON m.itemID = od.ItemID
		WHERE od.quantity >= 2);

SELECT * FROM MaisVendidos;

SELECT Nome FROM 
(SELECT m.Name AS Nome, od.Quantity AS Quantidade FROM Menu AS m 
INNER JOIN Orderdetails AS od ON m.itemID = od.ItemID
GROUP BY od.ItemID) AS BestSellers
WHERE Quantidade >=2;

-- Criando as Procedures

DELIMITER // 
CREATE PROCEDURE GetMaxQuantity()
BEGIN 
    SELECT MAX(Quantity) AS MaxQuantityFromAnOrder FROM
		(SELECT SUM(od.Quantity) AS Quantity FROM OrderDetails AS od GROUP BY od.OrderID) AS Qtd;
END //
DELIMITER ;

CALL GetMaxQuantity();

DELIMITER // 
CREATE PROCEDURE GetOrderDetails(InputID INT)
BEGIN 
	SELECT OrderID, Quantity, Total FROM  
		(SELECT od.OrderID AS OrderID, SUM(od.Quantity) AS Quantity, SUM(m.Price * od.Quantity) AS Total FROM Orderdetails AS od
		INNER JOIN menu as m ON m.ItemID = od.ItemID
		GROUP BY od.OrderID) AS Gambiarra
	WHERE OrderID = InputID;
END //
DELIMITER ;

SET @id = 3;
CALL GetOrderDetails(@id);

PREPARE GetOrderDetailsPE FROM "SELECT OrderID, Quantity, Total 
FROM (SELECT od.OrderID AS OrderID, SUM(od.Quantity) AS Quantity, SUM(m.Price * od.Quantity) AS Total FROM Orderdetails AS od 
INNER JOIN menu as m ON m.ItemID = od.ItemID 
GROUP BY od.OrderID) AS Gambiarra WHERE OrderID = ?;";

SET @id = 1;
EXECUTE GetOrderDetailsPE USING @id;

DEALLOCATE PREPARE GetOrdeDetailsPE;

CREATE TABLE log (logID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
info VARCHAR(255), 
hora timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

DROP Procedure CancelOrder;

DELIMITER // 
CREATE PROCEDURE CancelOrder(InputID INT)
BEGIN 
	IF EXISTS (SELECT OrderID FROM Orders WHERE OrderID = InputID) THEN
    	DELETE FROM Orders WHERE OrderID = InputID;
        INSERT INTO log (info) VALUES (CONCAT('Order ', InputID, ' canceled'));
        SELECT info from log ORDER BY hora DESC LIMIT 1;
    ELSE 
		INSERT INTO log (info) VALUES (CONCAT("Order ", InputID, " doesn't exists"));
        SELECT info from log ORDER BY hora DESC LIMIT 1;
	END IF;
END //
DELIMITER ;

INSERT INTO bookings (BookingID, TableNo, bSlotDay, bSlotTime, Guests, EmployeeID, CustomerID) VALUES (10, 10, curdate(), curtime(), 2, 1, 4);
Insert into orders (OrderId, TableNo, BookingId, Total, PaymentType) Values (7, 7, 10, 7, "c");

SET @id = 7;
CALL CancelOrder(@id);

-- Semana 2 Exercício 2

INSERT INTO bookings (BookingID, TableNo, bSlotDay, bSlotTime, Guests, EmployeeID, CustomerID) 
VALUES
(11, 5, '2023-12-01', '18:00:00', 2, 4, 1),
(12, 3, '2023-12-01', '18:00:00', 2, 4, 1),
(13, 2, '2023-12-01', '18:00:00', 2, 4, 1),
(14, 2, '2023-12-01', '18:00:00', 2, 4, 1);
UPDATE bookings SET bSlotTime = '19:00:00', TableNo = 6 WHERE BookingID = 14;

DROP Procedure CheckBooking; -- aka ManageBooking

DELIMITER // 
CREATE PROCEDURE CheckBooking(DateInput DATE, TableID INT)
BEGIN 
	IF EXISTS (SELECT bookingID FROM bookings WHERE (bSlotDay = DateInput) AND (TableNo = TableID)) THEN
        SELECT (CONCAT("There is already a boooking for ", DateInput, " on table ", TableID)) AS "Booking Status";
    ELSE 
		SELECT (CONCAT("There is no boooking for ", DateInput, " on table ", TableID)) AS "Booking Status";
	END IF;
END //
DELIMITER ;

CALL CheckBooking('2023-12-01', 6);

ALTER TABLE bookings MODIFY COLUMN Guests INT NOT NULL DEFAULT 2;
ALTER TABLE bookings MODIFY COLUMN EmployeeID INT NOT NULL DEFAULT 5; 
ALTER TABLE bookings MODIFY COLUMN bSlotTime TIME(0) NOT NULL DEFAULT '18:00:00';

-- DROP PROCEDURE AddBooking; #Name

DELIMITER // 
CREATE PROCEDURE AddBooking(DateInput DATE, TableID INT, Customer INT)
BEGIN 
	DECLARE booked TINYINT;
	START TRANSACTION;
    IF NOT EXISTS (SELECT bookingID FROM bookings WHERE (bSlotDay = DateInput) AND (TableNo = TableID)) THEN
        INSERT INTO bookings (TableNo, bSlotDay, CustomerID)
		VALUES
		(TableID, DateInput, Customer);
		SELECT (CONCAT("Booking make for ", DateInput, " on table ", TableID)) AS "Booking Status";
        SET booked = 1;
	ELSE 
		SELECT (CONCAT("There is already a boooking for ", DateInput, " on table ", TableID)) AS "Booking Status";
        SET booked = 0;
	END IF;
    
    IF booked = 1 THEN COMMIT;
    ELSE ROLLBACK;
    END IF;
END //
DELIMITER ;

CALL AddBooking('2023-12-03', 5, 3);

DELIMITER // 
CREATE PROCEDURE UpdateBooking( B_ID INT, DateInput DATE, GuestsNo INT)
BEGIN 
	DECLARE updated TINYINT;
	START TRANSACTION;
    IF EXISTS (SELECT bookingID FROM bookings WHERE (B_ID = BookingID)) THEN
        UPDATE bookings SET bSlotDay = DateInput, Guests = GuestsNo WHERE BookingID = B_ID;
		SELECT (CONCAT("Booking ", B_ID, " updated")) AS "Booking Status";
        SET updated = 1;
	ELSE 
		SELECT (CONCAT("Booking ", B_ID, " not found")) AS "Booking Status";
        SET updated = 0;
	END IF;
    
    IF updated = 1 THEN COMMIT;
    ELSE ROLLBACK;
    END IF;
END //
DELIMITER ;

CALL UpdateBooking(7, '2023-12-04', 3)

DELIMITER // 
CREATE PROCEDURE CancelBooking(B_ID INT)
BEGIN 
	DECLARE deleted TINYINT;
    DECLARE customer INT;
	START TRANSACTION;
    IF EXISTS (SELECT bookingID FROM bookings WHERE (BookingID = B_ID)) THEN
		SELECT CustomerID INTO customer FROM bookings WHERE (BookingID = B_ID);
        DELETE FROM bookings WHERE BookingID = B_ID;
        INSERT INTO log (info) VALUES (CONCAT('Booking ', B_ID, ' canceled by customer ', customer));
        SELECT info from log ORDER BY hora DESC LIMIT 1;
        SET deleted = 1;
	ELSE 
		SELECT (CONCAT("Booking ", B_ID, " not found")) AS "Booking Status";
        SET deleted = 0;
	END IF;
    
    IF deleted = 1 THEN COMMIT;
    ELSE ROLLBACK;
    END IF;
END //
DELIMITER ;

CALL CancelBooking(13);

-- Função para preencher o Total : melhorar para um trigger no futuro

DELIMITER //
CREATE PROCEDURE GetTotal (O_ID INT)
BEGIN
	DECLARE O_Total INT;
	SELECT Total INTO O_Total FROM  
		(SELECT od.OrderID AS OrderID, SUM(m.Price * od.Quantity) AS Total FROM Orderdetails AS od
		INNER JOIN menu as m ON m.ItemID = od.ItemID
		GROUP BY od.OrderID) AS Gambiarra
	WHERE OrderID = O_ID;
    UPDATE orders SET Total = O_Total WHERE OrderID = O_ID;
END // 
DELIMITER ;

CALL GetTotal (4);