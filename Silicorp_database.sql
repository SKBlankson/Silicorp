drop schema if exists Semi_Conductor_Management_System;
create SCHEMA Semi_Conductor_Management_System;
use Semi_Conductor_Management_System;

create table Departments(
	Dept_Code varchar(10) PRIMARY KEY,
	Dept_Name varchar(50) NOT NULL

    );
    
    
CREATE TABLE Bonus_Class(
		Bonus_Class_ID varchar(10) PRIMARY KEY,
		Percentage_Applied float(3),
        check  (Percentage_Applied <= 2)
);

CREATE TABLE Employee(
	Employee_ID varchar(10) PRIMARY KEY,
	FName varchar(50) NOT NULL,
	LName varchar(50) NOT NULL,
	Gender BOOLEAN NOT NULL,
	Date_of_Birth DATE,
	Company_Email varchar(45) UNIQUE NOT NULL,
    Personal_Email varchar(45) UNIQUE NOT NULL,
	Address varchar(100),
	Dept_Code varchar(10),
    Bonus_Class_ID varchar(10) DEFAULT 0,
	Date_Of_Employment Date,
    FOREIGN KEY (Dept_Code) REFERENCES Departments(Dept_Code) ON DELETE RESTRICT,
    FOREIGN KEY (Bonus_Class_ID) REFERENCES Bonus_Class(Bonus_Class_ID) ON UPDATE CASCADE
);

create table Location(
	Location_ID varchar(10) PRIMARY KEY,
    Country varchar(20) NOT NULL,
    City varchar(20) NOT NULL
    );

create table Branch(
	Branch_ID varchar(10) PRIMARY KEY,
    Branch_Name varchar(50) NOT NULL UNIQUE,
	Location_ID varchar(10),
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID) ON DELETE RESTRICT
    );

    
create table DepartmentBranch (
	Dept_Code varchar(10) NOT NULL,
    Branch_ID varchar(10) NOT NULL,
    FOREIGN KEY (Dept_Code) REFERENCES Departments(Dept_Code) ON DELETE RESTRICT,
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID) ON DELETE RESTRICT
    );


create table MarketingFinanceProjects(
	Project_ID varchar(10) PRIMARY KEY,
    Dept_Code varchar(10) NOT NULL,
    Campaign_Name varchar(50),
    Budget float(10),
    Start_Date date,
    End_Date date,
    FOREIGN KEY (Dept_Code) REFERENCES Departments(Dept_Code) ON DELETE RESTRICT,
	CONSTRAINT CheckDates Check (Start_date < End_date), 
	check (Budget < 15000000)
    );

create table RD_Projects(
	Hardware_ID varchar(10) PRIMARY KEY,
    Release_Status bool NOT NULL,
    Launch_Date date NOT NULL,
    Mobile_Desktop bool NOT NULL,
    MSRP float(10),
    Dept_Code varchar(10) NOT NULL,
    FOREIGN KEY (Dept_Code) REFERENCES Departments(Dept_Code) ON DELETE RESTRICT
    );
    
    
create table CPU_details (
Hardware_ID varchar(10) NOT NULL, 
   Model_name varchar(50) NOT NULL,
   Transistor_Count integer(30) NOT NULL,
   No_Of_cores integer(10) NOT NULL,
   No_of_threads integer(10) NOT NULL,
   Base_clock float(10) NOT NULL,
   Default_TDP integer(10) NOT NULL,
   CacheSize float(10) NOT NULL,
   FOREIGN KEY (Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT 
);

create table GPU_details (Hardware_ID varchar(10), 
   Model_name varchar(50)NOT NULL,
   Core_clock integer(10) NOT NULL,
   Architecture varchar(100) NOT NULL,
   Memory_size float(10) NOT NULL,
   Memory_clock float(10) NOT NULL,
   FOREIGN KEY (Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT
);
                
create table Storefront_Partners(Storefront_ID varchar(10) PRIMARY KEY,
	Store_name varchar(100),
	Date_engaged date,  
    Location_ID varchar(10),
    Email varchar(50) UNIQUE NOT NULL,
    Telephone varchar(15) UNIQUE NOT NULL,
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID) ON DELETE RESTRICT
);
                                
create table CPU_Storefront_Partners(Hardware_ID varchar(10),
    Storefront_ID varchar(10),
	CPU_quantity integer DEFAULT 0,
    Date_contracted date NOT NULL,
    FOREIGN KEY (Hardware_ID) REFERENCES RD_Projects(Hardware_ID),
    FOREIGN KEY (Storefront_ID) REFERENCES Storefront_Partners(Storefront_ID),
    check (CPU_quantity < 10000)
);
                                    
create table GPU_Storefront_Partners(
	Hardware_ID varchar(10) NOT NULL,
	Storefront_ID varchar(10) NOT NULL,
	GPU_quantity integer DEFAULT 0,
	Date_contracted date NOT NULL,
	FOREIGN KEY (Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT,
	FOREIGN KEY (Storefront_ID) REFERENCES Storefront_Partners(Storefront_ID) ON DELETE RESTRICT,
    CHECK (GPU_quantity < 100000)
);
                                    
CREATE TABLE FullTime(
  Employee_ID varchar(10) NOT NULL,
  Position varchar(50),
  Salary int(10) DEFAULT 0,
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE RESTRICT,
  check (Salary < 500000)
            
);


CREATE TABLE PartTime(
  Employee_ID varchar(10) NOT NULL,
  Contract_end_date DATE NOT NULL,
  Salary int(10) DEFAULT 0,
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE RESTRICT,
  check (Salary < 10000)
);


CREATE TABLE Intern(
           	Employee_ID varchar(10) NOT NULL,
			Contract_end_date DATE NOT NULL,
           	Stipend int(10) DEFAULT 0,
            FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE RESTRICT,
            check (Stipend < 2000)
);



CREATE TABLE Integrators(
	Integrator_ID varchar(10) PRIMARY KEY,
	Integrator_name varchar(100),
	Location_ID varchar(10) NOT NULL,
	Email varchar(45) UNIQUE NOT NULL,
	Telephone varchar(15) UNIQUE NOT NULL,
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID) ON DELETE RESTRICT
);

CREATE TABLE CPU_Integrators(
	Hardware_ID varchar(10) NOT NULL,
	Integrator_ID varchar(10) NOT NULL,
	Laptop_model_no varchar(25) NOT NULL,
    License_cost float(10) NOT NULL,
	Date_contracted DATE NOT NULL,
	FOREIGN KEY (Integrator_ID) REFERENCES Integrators(Integrator_ID) ON DELETE RESTRICT,
    FOREIGN KEY (Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT
);

CREATE TABLE GPU_Integrators(
	Hardware_ID varchar(10) NOT NULL,
	Integrator_ID varchar(10) NOT NULL,
	Laptop_model_no varchar(25) NOT NULL,
    License_cost float(10) NOT NULL,
	Date_contracted DATE NOT NULL,
	FOREIGN KEY(Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT,
	FOREIGN KEY (Integrator_ID) REFERENCES Integrators(Integrator_ID) ON DELETE RESTRICT
);

CREATE TABLE Fabricator_Partners(
	Fabricator_ID varchar(10),
	Fabricator_name varchar(100),
	Location_ID varchar(10) NOT NULL,
	Email varchar(45) UNIQUE NOT NULL,
	Telephone varchar(15) UNIQUE NOT NULL,
	PRIMARY KEY(Fabricator_ID),
	FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID) ON DELETE RESTRICT

);


CREATE TABLE CPU_FabricatorPartners(
	Fabricator_ID varchar(10) NOT NULL,
	Hardware_ID varchar(10) NOT NULL,
	Date_contracted DATE NOT NULL,
	CPU_quantity int(10) DEFAULT 0,
    Cost_per_unit float(10),
	FOREIGN KEY(Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT,
	FOREIGN KEY (Fabricator_ID) REFERENCES Fabricator_Partners(Fabricator_ID) ON DELETE RESTRICT
);

CREATE TABLE GPU_FabricatorPartners(
	Fabricator_ID varchar(10) NOT NULL,
	Hardware_ID varchar(10) NOT NULL,
	Date_contracted DATE NOT NULL,
	GPU_quantity int(10) DEFAULT 0,
    Cost_per_unit float(10),
	FOREIGN KEY(Hardware_ID) REFERENCES RD_Projects(Hardware_ID) ON DELETE RESTRICT,
	FOREIGN KEY (Fabricator_ID) REFERENCES Fabricator_Partners(Fabricator_ID) ON DELETE RESTRICT
);






-- use testingtable1;

INSERT INTO Departments( Dept_Code, Dept_Name) 
Values ("MFP", "Marketing & Finance") , ("RD","Research & Development"), ("IT", "IT"), ("HR", "Human Resources"),("CS", "Customer Service"); 

INSERT INTO Bonus_Class (Bonus_Class_ID, Percentage_Applied) 
Values (001, 1.60),  (002,1.50) , (003, 1.40) , (004, 1.30) , (005, 1.20), (000, 1.0);

INSERT INTO Employee (Employee_ID, FName, LName, Gender, Date_of_Birth, Company_Email, Personal_Email, Address, Dept_Code, Bonus_Class_ID,Date_of_Employment ) 
Values ("EMP00001", "Kwaku", "Sampson", 1, "1997-09-22", "sampson.kwaku@amdInternal.cm","skwaku@gmail.com", "3 Coconut Street", "RD", 005, "2020-10-22"),  
("EMP00002", "Deborah", "Boateng", 0, "2000-01-12", "boateng.deborah@amdInternal.cm","boatdeborah@gmail.com", "17 Drake Street", "MFP",005, "2022-05-22"),  
("EMP00003", "Mathew", "Davis", 1, "2001-06-19", "davis.mathew@amdInternal.cm", "dmathew@gmail.com", "2 Banana Street", "RD", 005,"2019-05-13"),  
("EMP00004", "Michelle", "Ansah", 0, "1999-03-16", "ansah.michelle@amdInternal.cm","amichelle@gmail.com", "26 Jump Street", "RD", 003, "2021-05-13"),  
("EMP00005", "Ama", "Johnson", 0, "2000-12-5", "johnson.patricia@amdInternal.cm","jpatricia@gmail.com", "14 Green Street", "HR",005, "2019-09-19"), 
("EMP00006", "David", "Smith", 1, "2001-07-21", "smith.david@amdInternal.cm","smithdavid@yahoo.com", "5 Donald Street", "MFP",004,"2019-09-13"), 
("EMP00007", "Bob", "Hawkins", 1, "1999-10-19", "hawkins.bob@amdInternal.cm","hawkinsbob@gmail.com", "2 Orange Lane", "RD",005,"2010-10-13"), 
("EMP00008", "Akosua", "Scott", 0, "1997-11-5", "scott.akosua@amdInternal.cm","scottkosua@gmail.com", "30 Rangoon Street", "MFP",004, "2019-11-13"), 
("EMP00009", "Aliyah", "Brown", 0, "2003-11-30", "brown.aliyah@amdInternal.cm","bliyahrown@yahoo.com", "8 Tiger Street", "IT",005,"2021-02-12"), 
("EMP00010", "Derrick", "Black", 1, "1991-03-14", "black.derrick@amdInternal.cm","bderrickbb@gmail.cm", "11 Venza Lane", "CS",004,"2019-09-1"), 
("EMP00011", "Tasha", "Kent", 0, "1991-02-8", "kent.tasha@amdInternal.cm","kent.tasha@gmail.com", "13 King Street", "CS",000,"2021-05-13"), 
("EMP00012", "Barry", "Allen", 1, "2000-01-9", "allen.barry@amdInternal.cm","abarry22@yahoo.com", "10 Watermelon Street", "IT",005, "2022-05-22"), 
("EMP00013", "Bruce", "Wayne" ,1, "1915-04-7", "wayne.bruce@amdInternal.cm","wayne.bruce@icloud.com", "3 Wayne Street", "RD",004,"2022-02-2"), 
("EMP00014", "Dinah", "Mensah", 0, "1998-09-13", "mensah.dinah@amdInternal.cm","mensadinah@icloud.com", "27 Orange Lane", "HR",005,"2017-05-2"), 
("EMP00015", "Kwabena", "Stone", 1, "2002-08-23", "stone.kwabena@amdInternal.cm","stkwabena@gmail.com", "19 Justice Street", "CS",005,"2020-05-5");

INSERT INTO fulltime(Employee_ID, Position, Salary) 
Values ("EMP00001","Staff", 20000),  
("EMP00002","Staff", 12000),  
("EMP00003","Staff",14000),  
("EMP00004", "Staff",22000),  
("EMP00005","Staff",12000);

INSERT INTO parttime(Employee_ID, Contract_end_date, Salary) 
Values ("EMP00006","2024-12-30", 9500),  
("EMP00007", "2023-03-29", 7520),  
("EMP00008","2023-02-13",9100),  
("EMP00009", "2023-04-10",9999),  
("EMP00010", "2025-11-3",4500); 

INSERT INTO intern(Employee_ID, Contract_end_date, Stipend) 
Values ("EMP00011", "2022-10-30", 500),
("EMP00012", "2023-02-16", 500),  
("EMP00013", "2023-12-14", 500),  
("EMP00014", "2022-07-10",500),  
("EMP00015", "2023-05-7",500);

INSERT INTO location(Location_ID,Country,City)
values("BRUBELG","Belgium","Ireland"),
("CORIRE","Ireland","Cork"),
("DUBIRE","Ireland","Dublin"),
("EDIENG","England","Edinbrugh"),
("KEYENG","England","Milton Keynes");

INSERT INTO Branch(Branch_ID, Branch_Name,Location_ID)
values("BRUBRA","Brussels Branch","BRUBELG"),
("CORBRA","Cork Branch","CORIRE"),
("DUBBRA","Dublin Branch","DUBIRE"),
("EDIBRA","Edinburgh Branch","EDIENG"),
("KEYBRA","MIlton Keynes Branch","KEYENG");

INSERT INTO departmentbranch(Dept_Code,Branch_ID)
values("RD","BRUBRA"),
("IT", "BRUBRA"), 
("HR", "BRUBRA"),
("CS", "BRUBRA"),
("RD","CORBRA"),
("IT", "CORBRA"), 
("HR", "CORBRA"),
("CS", "CORBRA"),
("RD","EDIBRA"),
("IT", "EDIBRA");



INSERT INTO marketingfinanceprojects(Project_ID,Dept_Code,Campaign_Name,Budget,Start_date,End_date)
values("PR001","RD","Ryzen confidence booster",45000,"2021-05-02","2022-12-01"),
("PR002","RD","Software Recognition",500000,"2021-02-09","2022-12-01"),
("PR003","RD","Code with AMD",7500000,"2021-04-02","2022-12-01"),
("PR004","RD","We love AMD",5500000,"2022-02-02","2022-09-01"),
("PR005","RD","AMD share care",5000000,"2020-06-02","2021-11-01"),
("PR006","RD","CPU in College",20000,"2020-04-02","2021-12-01");


INSERT INTO RD_Projects(Hardware_ID,Release_Status,Launch_date,Mobile_Desktop,MSRP,Dept_Code)
-- 1 means released and Mobible
values("CPU00001",1,"2021-02-02",1,240,"RD"),
("CPU00002",1,"2022-02-02",1,239,"RD"),
("CPU00003",1,"2020-12-12",1,120,"RD"),
("CPU00004",1,"2021-06-17",1,340,"RD"),
("CPU00005",1,"2019-07-02",1,250,"RD"),
("CPU00006",1,"2020-08-07",0,334,"RD"),
("CPU00007",1,"2022-02-02",0,314,"RD"),
("CPU00008",1,"2020-09-06",0,190,"RD"),
("CPU00009",0,"2024-12-1",0,230,"RD"),
("CPU00010",0,"2024-12-1",0,330,"RD"),
("GPU00001",1,"2020-04-02",1,560,"RD"),
("GPU00002",1,"2019-06-02",1,320,"RD"),
("GPU00003",1,"2020-05-02",1,230,"RD"),
("GPU00004",1,"2022-09-02",1,420,"RD"),
("GPU00005",1,"2021-04-12",1,400,"RD"),
("GPU00006",1,"2021-05-14",0,600,"RD"),
("GPU00007",1,"2021-02-02",0,350,"RD"),
("GPU00008",0,"2022-12-02",0,340,"RD"),
("GPU00009",0,"2026-04-09",0,540,"RD"),
("GPU00010",0,"2025-11-01",0,320,"RD")
;

insert into CPU_details (Hardware_ID, Model_name, Transistor_count, No_of_cores, No_of_threads, Base_clock, Default_TDP, CacheSize) 
values ("CPU00001", "Ryzen 7 1800x", 7, 8, 16, 3.6, 95, 20),
("CPU00002", "Ryzen 9 3900x", 8, 12, 24, 3.6, 105, 64), 
("CPU00003", "Ryzen Threadripper 3990x", 9, 64, 128, 3.8, 280, 128), 
("CPU00004", "Ryzen Threadripper Pro 3995wx", 9, 64, 128, 3.8, 280,128), 
("CPU00005", "Ryzen 5 3600XT", 6, 6, 12, 3.6, 95, 32), 
("CPU00006", "Ryzen 3 3100", 5, 4, 8, 3.6, 65, 16), 
("CPU00007", "Ryzen 9 3950x", 8, 12, 24, 3.8, 105, 64), 
("CPU00008", "Ryzen 7 3700x", 7, 8, 16, 3.6, 95, 32), 
("CPU00009", "Ryzen 5 3500", 6, 6, 12, 3.6, 95, 16), 
("CPU00010", "Ryzen 3 3300x", 5, 4, 8, 3.6, 95, 16); 


insert into GPU_details (Hardware_ID, Model_name, Core_clock, Architecture, Memory_size, Memory_clock) 
values ("GPU00001", "Radeon RX 590", 1545, "GCN", 8, 8000), 
("GPU00002", "Radeon Pro 5300", 1650, "RDNA", 4, 14000), 
("GPU00003", "Radeon RX 7900xt", 1545, "RDNA 3", 20, 20000), 
("GPU00004", "Radeon Pro Duo", 1300, "GCN 3rd gen", 4, 1000), 
("GPU00005", "Radeon RX Vega 56", 1156, "GCN 5th gen", 8, 1890), 
("GPU00006", "Radeon VII", 1400, "GCN 5th gen", 16, 1024), 
("GPU00007", "Radeon RX 5300", 1327, "RDNA", 3, 14000), 
("GPU00008", "Radeon RX 6400", 1923, "RDNA 2", 4, 16000), 
("GPU00009", "Radeon RX 7900 xtx", 1900, "RDNA 3", 20, 20000), 
("GPU00010", "Radeon RX 5600", 1375, "RDNA", 6, 12000); 

insert into Storefront_Partners(Storefront_ID, Store_name, Date_engaged, Location_ID, Email, Telephone)
values("SF0001", "Starlite","2018-10-20", "CORIRE", "starlite@gmail.com", "0245678954"),
("SF0002", "Telefonika", "2015-10-20","DUBIRE" , "telefonika@gmail.com", "0255670954"),
("SF0003", "Amazon", "2014-10-20", "EDIENG", "amazon@gmail.com", "0598770931"),
("SF0004", "Bestbuy", "2020-10-20", "KEYENG", "bestbuy@yahoo.com", "0123459809"),
("SF0005", "CanWest", "2022-10-20", "BRUBELG", "canwest@icloud.com", "0559871134"),
("SF0000", "AMD", "2000-10-20", "EDIENG", "amd@hotmail.com", "0554471134");


insert into CPU_Storefront_Partners(Hardware_ID, Storefront_ID, CPU_quantity, Date_contracted)
values("CPU00001", "SF0001", 100, "2021-10-23"),
("CPU00002", "SF0002", 1500, "2020-10-23"),
("CPU00003", "SF0003", 500, "2022-10-14"),
("CPU00004", "SF0004", 780, "2022-10-15"),
("CPU00005", "SF0005", 690, "2020-10-23"),
("CPU00001", "SF0001", 4500, "2020-10-23"),
("CPU00002", "SF0002", 4500, "2020-10-23"),
("CPU00003", "SF0003", 6300, "2022-10-23"),
("CPU00004", "SF0004", 1240, "2021-10-23"),
("CPU00005", "SF0005", 1120, "2021-09-13"),
("CPU00005", "SF0000", 3040, "2021-11-23"),
("CPU00001", "SF0000", 1200, "2021-07-13");  
 


insert into GPU_Storefront_Partners(Hardware_ID, Storefront_ID, GPU_quantity, Date_contracted)
values("GPU00010", "SF0001", 2100, "2021-10-23"),
("GPU00009", "SF0002", 1500, "2020-10-23"),
("GPU00008", "SF0003", 5000, "2022-10-14"),
("GPU00007", "SF0004", 7880, "2022-10-15"),
("GPU00006", "SF0005", 6490, "2020-10-23"),
("GPU00005", "SF0001", 4500, "2020-10-23"),
("GPU00004", "SF0002", 4500, "2020-10-23"),
("CPU00003", "SF0003", 64300, "2022-10-23"),
("GPU00002", "SF0004", 12240, "2021-10-23"),
("GPU00001", "SF0005", 11520, "2021-09-13"),
("GPU00005", "SF0000", 3000, "2020-05-10"),
("GPU00004", "SF0000", 5300, "2020-09-25");

INSERT INTO Integrators(Integrator_ID,Integrator_name,Location_ID,Email,Telephone)
VALUES ("INT00001","Asus","BRUBELG", "Nii.john@amd.com", "+1(802)847-8241"),
("INT00002","Dell","CORIRE", "cena.sean@amd.com", "+1(570)313-4086"),
("INT00003","Lenovo","DUBIRE", "chilling.bing@amd.com", "+1(660)999-6281"),
("INT00004", "Acer", "KEYENG", "bay.michael@amd.com", "+1(704)634-1363"),
("INT00005", "HP", "EDIENG", "sir.bruce@amd.com", "+1(568)719-6879"),
("INT00006", "Corsair","KEYENG","post.malone@amd.com","+1(357)9054222"),
("INT00007", "MSI", "BRUBELG", "ronaldo.crista@amd.com", "+1(275)2831826"),
("INT00008","Razer","DUBIRE", "keith.tay@amd.com","+1(466)2267886");


INSERT INTO CPU_Integrators(Hardware_ID, Integrator_ID, Laptop_model_no, License_cost,Date_contracted)
VALUES ("CPU00001","INT00001", "16-k0033dx",2390000, "2022-02-17"),
("CPU00002", "INT00002", "AORUS 17 YE5-A4US544SP",4500000,"2021-09-03"),
("CPU00003", "INT00003", "AWM17R5-A355BLK-PUS",6900899,"2021-12-21"),
("CPU00004","INT00004", "Stealth7712046",2340000, "2022-02-28"),
("CPU00005","INT00005", "AN517-55-5354",4200000, "2020-01-07"),
("CPU00001", "INT00006", "GU603ZM-M16.I73060",1200000,"2022-09-08"),
("CPU00002", "INT00007", "GV301RE-X13.R93050T",2340000,"2020-05-27"),
("CPU00003", "INT00008", "Sword1512698",2390000, "2021-03-14"),
("CPU00004","INT00001", "G15RE-A362GRY-PUS",4500000,"2022-07-23"),
("CPU00005","INT00002", "FX506HC-F15.I53050",3230000,"2021-08-15");


INSERT INTO GPU_Integrators(Hardware_ID, Integrator_ID, Laptop_model_no,License_cost, Date_contracted)
VALUES ("GPU00001","INT00001", "82V6S00000",4500000, "2022-11-09"),
("GPU00002","INT00002", "15-fa0031dx",2300000, "2022-12-12"),
("GPU00003","INT00003", "27-ca1244",1200450,"2021-11-15"),
("GPU00004","INT00005", "PH315-55-70ZV",5900000,"2020-01-17"),
("GPU00005","INT00004", "GA401QH-211.ZG14BL",3300000,"2021-08-15"),
("GPU00001","INT00007", "4ybmSyMzggZx-FN",3450000, "2022-12-08"),
("GPU00002","INT00008", "AWX14R1-7679WHT-PUS",1230000, "2021-07-19"),
("GPU00003","INT00006", "76-v8TDnnbqAVtz",2340000, "2022-09-25"),
("GPU00004","INT00005", " 15-ey0013dx",5700000, "2022-04-13"),
("GPU00005","INT00004", "A3-Ry2wkJDG4Rbg",3560000, "2021-06-15");

INSERT INTO Fabricator_Partners(Fabricator_ID, Fabricator_name, Location_ID, Email,Telephone)
VALUES ("FAB0201", "Globalfoundries", "CORIRE","lloyd.alberto@amd.com", "+1(602)4414127"),
("FAB0202","TSMC", "EDIENG","ballard.victor@amd.com", "+1(816)6331807"),
("FAB0203", "Samsung", "DUBIRE", "morton.angel@amd.com", "+1(485)5674991"),
("FAB0204", "AMD Fabricators Inc", "BRUBELG","abbot.dorothy@amd.com", "+1(448)9799129"),
("FAB0205", "Umbrella Corp", "KEYENG","wesker.albert@amd.com", "+1(250)2775956");

INSERT INTO CPU_FabricatorPartners(Hardware_ID, Fabricator_ID,Date_contracted,Cost_per_unit, CPU_quantity)
VALUES ("CPU00001", "FAB0201","2022-11-12",50, 5000),
("CPU00010", "FAB0202","2021-07-18", 67, 2500),
("CPU00002", "FAB0203","2022-09-24", 45, 10000),
("CPU00003", "FAB0204","2020-04-13", 55, 17000),
("CPU00004", "FAB0205","2021-09-12", 70, 12800),
("CPU00005", "FAB0201","2020-11-12", 51, 42069),
("CPU00006", "FAB0202","2022-02-15", 57, 11000),
("CPU00007", "FAB0203","2021-12-16", 40, 2000),
("CPU00008", "FAB0204","2022-05-02", 69, 4600),
("CPU00009", "FAB0205","2022-08-21", 56, 8300);

INSERT INTO GPU_FabricatorPartners(Hardware_ID, Fabricator_ID, Date_contracted,Cost_per_unit, GPU_quantity)
VALUES ("CPU00001", "FAB0201", "2020-01-10", 90,7600),
("CPU00002", "FAB0202", "2022-09-14",100, 2300),
("CPU00003", "FAB0203", "2021-03-27",170, 10000),
("CPU00004", "FAB0204","2022-08-11", 88, 5600),
("CPU00005", "FAB0205", "2022-08-25", 125, 4500),
("CPU00001", "FAB0201", "2021-04-08", 130, 8400),
("CPU00002", "FAB0202", "2020-11-30", 165, 12000),
("CPU00003", "FAB0203", "2021-11-27", 110, 13600),
("CPU00004", "FAB0204", "2022-10-12", 105, 2000),
("CPU00005", "FAB0205", "2022-03-17", 98, 7200);

-- How many products are being released between now and 2026 (Functionality 1)
SELECT 'CPU' AS ProductType, SUM(CASE WHEN Hardware_ID LIKE 'CPU%' and Launch_date>now() and Launch_date<"2026-12-12" THEN 1 ELSE 0 END) AS Count
FROM rd_projects
UNION ALL
SELECT 'GPU', SUM(CASE WHEN Hardware_ID LIKE 'GPU%' and Launch_date>now() and Launch_date<"2026-12-12" THEN 1 ELSE 0 END)
FROM rd_projects;

-- Who is our most important fabricator partner right now (Functionality 2)
-- by cost of production
select Fabricator_ID,sum(GPU_quantity*Cost_per_unit) Total_Cost
from
(
    select Fabricator_ID,GPU_quantity,Cost_per_unit
    from GPU_fabricatorpartners
    union all
    select Fabricator_ID,CPU_quantity,Cost_per_unit
    from CPU_fabricatorpartners
) t
group by Fabricator_ID order by Total_Cost desc;

-- by quantity of production
select Fabricator_ID,sum(GPU_quantity) Total_Allocation
from
(
    select Fabricator_ID,GPU_quantity
    from GPU_fabricatorpartners
    union all
    select Fabricator_ID,CPU_quantity
    from CPU_fabricatorpartners
) t
group by Fabricator_ID order by Total_Allocation desc;

-- find part time employees and interns who's cotract ends before the end of the year (functionality 3)
SELECT PartTime.Employee_ID,PartTime.Contract_end_date
FROM PartTime
WHERE PartTime.Contract_end_date BETWEEN "2022-01-01" AND "2022-12-31"
UNION
SELECT Intern.Employee_ID, Intern.Contract_end_date
FROM Intern
WHERE Intern.Contract_end_date BETWEEN "2022-01-01" AND "2022-12-31";

-- Which CPU and GPUs are liceensed by a specific integrator  (Functionality 4)
-- this query yspecifically tracking the cpu and gpu allocations of Interators 2 and 6
select *
from GPU_Integrators
inner join CPU_Integrators
on GPU_Integrators.Integrator_ID = CPU_Integrators.Integrator_ID 
Where GPU_Integrators.Integrator_ID = "INT00002" or CPU_Integrators.Integrator_ID= "INT00006";


-- How many CPUs and GPUs has each storefront partner been allocated? (Functionality 5)
SELECT Storefront_Partners.Storefront_ID  , Storefront_Partners.Store_name, sum(CPU_Storefront_Partners.CPU_quantity) as Total_CPU_Allocation,sum(GPU_Storefront_Partners.GPU_quantity) as Total_GPU_Allocation
FROM Storefront_Partners
LEFT JOIN CPU_Storefront_Partners ON Storefront_Partners.Storefront_ID  = CPU_Storefront_Partners.Storefront_ID
LEFT JOIN GPU_Storefront_Partners ON Storefront_Partners.Storefront_ID  = GPU_Storefront_Partners.Storefront_ID
GROUP BY Storefront_Partners.Storefront_ID  , Storefront_Partners.Store_name;

-- How many CPUs and GPUs does AMD have for direct use/sale through its own channels (Functionailty 6)
-- in terms of CPUs
SELECT DISTINCT *, (SELECT SUM(CPU_quantity) FROM CPU_Storefront_Partners WHERE CPU_Storefront_Partners.Storefront_ID = "SF0000") AS Total_CPU_Quantity
FROM CPU_Storefront_Partners
WHERE CPU_Storefront_Partners.Storefront_ID = "SF0000";

-- in terms of GPUs
SELECT * ,
(SELECT SUM(GPU_quantity) FROM GPU_Storefront_Partners WHERE GPU_Storefront_Partners.Storefront_ID = "SF0000") AS Total_GPU_Quantity
FROM GPU_Storefront_Partners
WHERE GPU_Storefront_Partners.Storefront_ID = "SF0000";
