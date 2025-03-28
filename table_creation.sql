
# ------- Craete new data base 111124_Viogradova_taxi
-- CREATE database 111124_Viogradova_taxi; -- New base creation


-- use 111124_Viogradova_taxi;

# -- Tables creationg

-- create table clients (
-- 	   id int primary key auto_increment,
--     first_name varchar(70),
--     Last_name varchar(70),
--     DOB date,
--     gender char(1),
--     phone_number int,
--     email varchar(100)
--     );

# -- Checking the existed tables 
-- select * from companies;

-- create table tarifs (
-- 	id int primary key,
--     class varchar(10),
--     coefficient decimal
--     );
    
 
-- create table companies (
-- 	id int primary key,
--     `name` varchar(90),
--     location varchar(255)
--     );

-- create table reviews (
-- 	id int primary key,
--     rate int,
--     `comment` varchar(1000),
--     rev_date datetime
--     );

-- create table vehicles (
-- 	id int primary key auto_increment,
--     year_of_production int,
--     model varchar(10),
--     plate_number varchar(10),
--     color char(6),
--     vin_number varchar(30),
--     class char(10)
--     );

-- create table drivers (
-- 	id int auto_increment,
--     primary key (id),
--     
--     vehicle_id int,
--     unique (vehicle_id),
--     foreign key (vehicle_id) references vehicles(id),
--     
--     first_name varchar(70),
--     last_name varchar(70),
--     driver_license varchar(30),
--     phone_number int,
--     DOB date,
--     rate decimal(3, 2),
--     hire_date date, 
--     salary decimal(20, 2)
--     );

-- create table orders (
-- 	id int auto_increment,
--     primary key (id),
--     price decimal,
--    
--     client_id int,
--     foreign key (client_id) references clients(id),
--     
--     start_point_long decimal(15,12),
--     start_point_lat decimal(15,12),
--     end_point_long decimal(15,12),
--     end_point_lat decimal(15,12),
--     
--     driver_id int,
--     foreign key (driver_id) references drivers(id),
--     
--     start_date_time datetime,
--     end_date_time datetime,
--     distance decimal, 
--     
--     review_id int,
--     foreign key (review_id) references reviews(id),
--     
--     tarif_id int,
--     foreign key (tarif_id) references tarifs(id),
--     
--     status int,
--     
--     company_id int,
--     foreign key (company_id) references companies(id)
--     );



