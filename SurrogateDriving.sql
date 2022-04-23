DROP TABLE IF EXISTS Customer, Driver, Car, Transaction, User;

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    phone_number VARCHAR(32) NOT NULL
);

INSERT INTO Customer (customer_id, ssn, name, Date_of_Birth, phone_number) VALUES
('20', '900123456', 'John','1998-12-02', '540-812-3456'),
('1', '900123457', 'Joe', '1997-11-02','540-812-3406'),
('2', '900123458', 'Adam', '1996-10-12', '540-812-3256'),
('3', '900123459', 'John', '1995-02-03', '540-812-3456'),
('4', '900123460', 'Ben', '1994-01-13', '478-812-3406'),
('5', '900123461', 'Carl', '1993-12-23', '420-812-3256'),
('6', '900123462', 'Daniel', '1992-04-03', '478-457-3456'),
('7', '900123463', 'Gabin', '1991-12-01', '478-812-1406'),
('8', '900123464', 'Fiyona', '1990-05-06', '478-540-3256'),
('9', '900123465', 'Hannah', '1989-02-14', '540-478-3456'),
('10', '900123466', 'Isaiah', '1988-06-06', '540-457-7779'),
('11', '900123467', 'Jason', '1987-04-13', '420-549-3256'),
('12', '900123468', 'Kelly', '1986-01-05', '540-812-7564'),
('13', '9001269', 'Lilly', '1985-12-23', '540-812-3406'),
('14', '900123470', 'Molly', '1984-11-11',  '540-412-3556'),
('15', '900123471', 'Nate', '1983-08-03', '478-312-8456'),
('16', '900123472', 'Ozil', '1984-09-16', '478-444-3406'),
('17', '900123473', 'Paul', '1982-11-23',  '420-321-3956'),
('18', '900123474', 'Qing', '1981-04-09',  '539-444-2456'),
('19', '900123475', 'Robin', '1980-07-23', '478-447-1706');

CREATE TABLE Driver
(
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    ssn INT NOT NULL,
    license_number VARCHAR(16) NOT NULL,
    name VARCHAR(100) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    phone_number VARCHAR(32) NOT NULL
);

INSERT INTO Driver (driver_ID, SSN, license_number, name, Date_Of_Birth, phone_number) VALUES
                                                                           ('1','300345349', 'B13231232', 'John Doe', '1998-12-02', '921-213-2121'),
                                                                           ('2','302334349', 'H12813044', 'Jane Doe', '1990-10-03', '121-093-9002'),
                                                                           ('3','300348004', 'G12912312', 'Freddy Smith', '2001-09-23', '892-823-8192'),
                                                                           ('4','319022993', 'T23234908', 'James Wayne', '1983-08-04', '272-822-2182'),
                                                                           ('5','389120347', 'J32824014', 'Amanda Le', '1987-11-10', '571-213-2899'),
                                                                           ('6','371298123', 'P23234853', 'Mary Lee', '1968-08-21', '550-228-9031'),
                                                                           ('7','352394022', 'L23423099', 'Matthew Tran', '1991-05-13', '540-213-2121'),
                                                                           ('8','368234119', 'N23423432', 'Jessica Yi', '1995-08-02', '782-293-9021'),
                                                                           ('9','334902342', 'N59023499', 'Emily Lee', '1996-02-21', '566-290-8444'),
                                                                           ('10','335883777', 'A19021388', 'Robert Jefferson', '1993-03-09', '822-093-3331'),
                                                                           ('11','328923118', 'B89923003', 'Jennifer Thomas', '1989-12-25', '616-213-8999'),
                                                                           ('12','311891238', 'H23890001', 'Tyler Smith', '1979-12-2', '918-117-6721'),
                                                                           ('13','374366179', 'K29342003', 'Teresa So', '1988-02-22', '626-172-9338'),
                                                                           ('14','323492300', 'P02348832', 'Catherine Lo', '1978-02-12', '703-909-2281'),
                                                                           ('15','228923488', 'S23423428', 'Abigail Roberts', '1998-12-2', '738-280-5712'),
                                                                           ('16','227938349', 'P23488889', 'Ryan Zimm', '1968-07-03', '812-393-2121'),
                                                                           ('17','339034829', 'N23482390', 'Brian Ho', '1978-08-08', '202-213-8421'),
                                                                           ('18','892100939', 'W23483888', 'Lindsey Lam', '1973-07-19', '201-288-2111'),
                                                                           ('19','288234892', 'J23848811', 'Christopher Chan', '1992-10-02', '571-218-7701'),
                                                                           ('20','234900023', 'K23433819', 'Noah Long', '1987-02-07', '338-903-6288');


CREATE TABLE Car
(
    plate_number VARCHAR(16) NOT NULL,
    PRIMARY KEY (plate_number),
    color VARCHAR(32) NOT NULL,
    model VARCHAR(32) NOT NULL,
    brand VARCHAR(32) NOT NULL,
    year INT NOT NULL,
    car_type VARCHAR(32) NOT NULL,
    transmission VARCHAR(32) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Car (plate_number, color, model, brand, year, car_type, transmission) VALUES
                                                                                      ('215BG2', 'Red', 'Civic', 'Honda', '2015', 'Sedan', 'Automatic', '1'),
                                                                                      ('315BG2', 'Blue', 'Corolla', 'Toyota', '2010', 'Sedan', 'Automatic', '2'),
                                                                                      ('215CG1', 'Black', 'Rav4', 'Toyota', '2015', 'SUV', 'Automatic', '3'),
                                                                                      ('115DG2', 'Green', 'F150', 'Ford', '2019', 'Truck', 'Manual', '4'),
                                                                                      ('415AC2', 'White', 'Elantra', 'Hyubdai', '2015', 'Sedan', 'Automatic', '5'),
                                                                                      ('015ZG3', 'Orange', 'Sonata', 'Hyundai', '2009', 'Sedan', 'Manual', '6'),
                                                                                      ('915CG0', 'Black', '520i', 'BMW', '2020', 'Sedan', 'Automatic', '7'),
                                                                                      ('330GH1', 'Navy', 'G80', 'Genesis', '2021', 'Sedan', 'Automatic', '8'),
                                                                                      ('225UT0', 'Black', 'Camry', 'Toyota', '2007', 'Sedan', 'Manual', '9'),
                                                                                      ('940KJ2', 'White', 'Altima', 'Nissan', '2011', 'Sedan', 'Automatic', '10'),
                                                                                      ('847AG2', 'Blue', 'Santafe', 'Hyundai', '2017', 'SUV', 'Manual', '11'),
                                                                                      ('345GH2', 'Green', 'Prius', 'Toyota', '2009', 'Sedan', 'Automatic', '12'),
                                                                                      ('135IY2', 'Blue', 'Forte', 'Kia', '2020', 'Sedan', 'Automatic', '13'),
                                                                                      ('875BG2', 'Violet','Silverado', 'Chevrolet', '2022', 'Truck', 'Automatic', '14'),
                                                                                      ('005BD1', 'White', 'Navigator', 'Lincoln', '2022', 'SUV', 'Automatic', '15'),
                                                                                      ('995AC2', 'Black', 'Sorento', 'Kia', '2008', 'SUV', 'Manual', '16'),
                                                                                      ('885ZG0', 'Brown', 'Telluride', 'Kia', '2021', 'SUV', 'Automatic', '17'),
                                                                                      ('015KG3', 'White', 'Compass', 'Jeep', '2013', 'SUV', 'Automatic', '18'),
                                                                                      ('215BG1', 'Black', 'CLA250', 'Mercedes-Benz', '2022', 'Sedan', 'Automatic', '19'),
                                                                                      ('098MN2', 'Black', 'R8', 'Audi', '2019', 'Sedan', 'Automatic', '20');



CREATE TABLE Transaction
(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    start_location VARCHAR(64) NOT NULL,
    end_location VARCHAR(64) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    customer_rating INT NOT NULL,
    CONSTRAINT customer_rating_constraint CHECK (customer_rating BETWEEN 1 AND 5),
    driver_rating INT NOT NULL,
    CONSTRAINT driver_rating_constraint CHECK (driver_rating BETWEEN 1 AND 5)
);

INSERT INTO Transaction (transaction_id, start_time, end_time, start_location, end_location, price, customer_rating, driver_rating) VALUES
                                                                                                                                        ('20', '2022-01-01 10:00:10', '2022-01-01 11:01:20', '600 Appalachian dr', '300 Mcdonald st', '5.3', '5', '5'),
                                                                                                                                        ('1', '2022-01-02 10:06:13', '2022-01-02 11:05:15', 'Barger st', 'Edgy way', '8.3', '5', '5'),
                                                                                                                                        ('2', '2021-09-01 09:00:10', '2022-09-01 9:29:20', '600 West Campus dr', '389 Jefferson Terrace', '5.3', '5', '5'),
                                                                                                                                        ('3', '2022-01-03 21:00:14', '2022-01-03 21:41:24', '500 Hunter dr', '1200 Snyder ln', '11.2', '5', '3'),
                                                                                                                                        ('4', '2019-01-01 10:00:10', '2019-01-01 10:19:20', '800 Newport Place', '821 Washington st', '9.3', '4', '4'),
                                                                                                                                        ('5', '2022-01-11 13:42:12', '2022-01-11 14:01:22', '823 Mason blvd', '100 Washington st', '14.3', '3', '1'),
                                                                                                                                        ('6', '2022-01-13 08:01:13', '2022-01-13 09:04:25', '900 Martin dr', '500 Montgomery st', '20.3', '4', '3'),
                                                                                                                                        ('7', '2022-01-01 11:21:10', '2022-01-01 12:19:20', '721 Hamilton ave', '211 Johnson st', '27.2', '2', '1'),
                                                                                                                                        ('8', '2022-03-02 15:11:13', '2022-03-02 16:00:21', '200 Mason dr', '2000 Jonathan dr', '24.1', '5', '5'),
                                                                                                                                        ('9', '2022-01-19 01:04:10', '2022-01-19 02:02:21', '100 Roanoke dr', '2200 King st', '12.3', '1', '5'),
                                                                                                                                        ('10', '2021-03-06 10:00:10', '2022-03-06 11:01:20', '1000 Lee dr', '900 Mccomas st', '18.3', '5', '5'),
                                                                                                                                        ('11', '2022-02-28 14:40:10', '2022-02-28 15:20:20', '1400 Kelsey ln', '8000 Newman ln', '6.7', '5', '5'),
                                                                                                                                        ('12', '2022-01-01 10:00:10', '2022-01-01 10:08:20', '840 Terrace ln', '219 Thompson st', '12.32', '5', '5'),
                                                                                                                                        ('13', '2022-04-02 12:05:22', '2022-04-02 13:01:11', '6000 Anthony dr', '120 Burrus st', '11.3', '5', '5'),
                                                                                                                                        ('14', '2021-11-11 19:42:10', '2021-11-11 20:01:20', '102 Alumni Mall', '1092 Center St', '16.24', '4', '4'),
                                                                                                                                        ('15', '2022-05-04 03:21:10', '2022-05-04 04:01:20', '892 Washington blvd', '983 Roanoke st', '9.62', '5', '4'),
                                                                                                                                        ('16', '2022-03-02 17:00:10', '2022-03-02 17:20:20', '4023 Vermont dr', '512 Blacksburg dr', '16.21', '4', '2'),
                                                                                                                                        ('17', '2021-12-30 17:00:10', '2021-12-30 17:11:20', '213 Apple dr', '684 Terrace av', '17.88', '3', '5'),
                                                                                                                                        ('18', '2022-02-21 07:00:12', '2022-02-21 07:20:20', '48332 Washington dr', '402 Maple st', '15.43', '4', '4'),
                                                                                                                                        ('19', '2022-02-12 12:02:10', '2022-02-12 12:15:20', '212 Collegiate dr', '300 Main st', '11.22', '2', '3');

CREATE TABLE User
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(32) NOT NULL,
    password VARCHAR(256) NOT NULL,          /* To store Salted and Hashed Password Parts */
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    PRIMARY KEY (id)
);
