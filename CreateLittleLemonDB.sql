-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Customers` (
  `CustomerID` INT NOT NULL,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(255) NULL,
  `Contact` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE INDEX `CustomerID_UNIQUE` (`CustomerID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Employees` (
  `EmployeeID` INT NOT NULL,
  `FullName` VARCHAR(200) NOT NULL,
  `Role` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `Contact` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `AnualSalary` INT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE INDEX `EmployeeID_UNIQUE` (`EmployeeID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `BookingID` INT NOT NULL AUTO_INCREMENT,
  `TableNo` INT NOT NULL,
  `bSlotDay` DATE NOT NULL,
  `bSlotTime` TIME NOT NULL,
  `Guests` INT NOT NULL,
  `EmployeeID` INT NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`BookingID`),
  UNIQUE INDEX `BookingID_UNIQUE` (`BookingID` ASC) VISIBLE,
  INDEX `EmployeeID_idx` (`EmployeeID` ASC) VISIBLE,
  INDEX `CustomerID_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `EmployeeID`
    FOREIGN KEY (`EmployeeID`)
    REFERENCES `LittleLemonDB`.`Employees` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `CustomerID`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `OrderID` INT NOT NULL,
  `TableNo` INT NOT NULL,
  `BookingID` INT NOT NULL,
  `Total` DECIMAL(10,2) NULL COMMENT 'Criar um trigger para dar update nesse campo\n\nSELECT SUM(m.Price * od.Quantity) From OrderDetails AS od INNER JOIN Menu AS m WHERE od.OrderID = Orders.OrderID AND od.ItemID = m.ItemID;',
  `PaymentType` VARCHAR(45) NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE INDEX `OrderID_UNIQUE` (`OrderID` ASC) VISIBLE,
  INDEX `BookingID_idx` (`BookingID` ASC) VISIBLE,
  CONSTRAINT `BookingID`
    FOREIGN KEY (`BookingID`)
    REFERENCES `LittleLemonDB`.`Bookings` (`BookingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `ItemID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Type` VARCHAR(45) NOT NULL,
  `Description` VARCHAR(255) NULL,
  `Vegan` TINYINT NULL,
  `Glutenfree` TINYINT NULL,
  `Price` DECIMAL(6,2) NOT NULL,
  `PrepTime` TIME NOT NULL DEFAULT '00:05:00' COMMENT 'In case of itens like water and soda, the default is five minutes',
  PRIMARY KEY (`ItemID`),
  UNIQUE INDEX `itemID_UNIQUE` (`ItemID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`OrderDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`OrderDetails` (
  `OrderID` INT NOT NULL,
  `ItemID` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `OrderTime` TIME NULL,
  `e_ID` INT NOT NULL,
  INDEX `OrderID_idx` (`OrderID` ASC) VISIBLE,
  INDEX `ItemID_idx` (`ItemID` ASC) VISIBLE,
  INDEX `EmployeeID_idx` (`e_ID` ASC) VISIBLE,
  CONSTRAINT `OrderID`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `ItemID`
    FOREIGN KEY (`ItemID`)
    REFERENCES `LittleLemonDB`.`Menu` (`ItemID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `e_ID`
    FOREIGN KEY (`e_ID`)
    REFERENCES `LittleLemonDB`.`Employees` (`EmployeeID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `LittleLemonDB`;

DELIMITER $$
USE `LittleLemonDB`$$
CREATE DEFINER = CURRENT_USER TRIGGER `LittleLemonDB`.`OrderDetails_BEFORE_INSERT` BEFORE INSERT ON `OrderDetails` FOR EACH ROW
BEGIN
	SET New.OrderTime = CURRENT_TIME();
    -- SET New.ExpectedTime = CURRENT_TIME() + (SELECT `LittleLemonDB`.`Menu`.`PrepTime` FROM `LittleLemonDB`.`Menu` WHERE `LittleLemonDB`.`Menu`.`ItemID` = `LittleLemonDB`.`OrderDetails`.`ItemID`);
	-- SELECT m.Price INTO @pricevar FROM `LittleLemonDB`.`Menu` AS m INNER JOIN `LittleLemonDB`.`OrderDetails` AS od ON m.ItemID = od.ItemID WHERE m.ItemID = od.ItemID; 
    -- SELECT od.Quantity * @pricevar INTO @itemTotal FROM `LittleLemonDB`.`OrderDetails` AS od;
    -- SELECT o.Total INTO @oldTotal FROM `LittleLemonDB`.`Orders` AS o INNER JOIN `LittleLemonDB`.`OrderDetails` AS od ON o.OrderID = od.OrderID WHERE o.OrderID = od.OrderID;
	-- INSERT INTO `LittleLemonDB`.`Orders` SET Total = @itemTotal + @oldTotal; 
    -- INSERT INTO `LittleLemonDB`.`Orderdetails` SET OrderTime = CURRENT_TIME(), ExpectedTime = CURRENT_TIME() + (SELECT `LittleLemonDB`.`Menu`.`PrepTime` FROM `LittleLemonDB`.`Menu`);
    -- INSERT INTO `LittleLemonDB`.`Orderdetails` SET ExpectedTime = CURRENT_TIME() + (SELECT `LittleLemonDB`.`Menu`.`PrepTime` FROM `LittleLemonDB`.`Menu`);
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
