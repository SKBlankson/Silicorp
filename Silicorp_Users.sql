create SCHEMA Semi_Conductor_Management_System;
use Semi_Conductor_Management_System;

create table Departments(
	Dept_Code varchar(10) PRIMARY KEY,
	Dept_Name varchar(50) NOT NULL

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
	Date_Of_Employment Date,
    FOREIGN KEY (Dept_Code) REFERENCES Departments(Dept_Code) ON DELETE RESTRICT
);


create table Users(
    User_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FName varchar(50) NOT NULL,
    LName varchar(50) NOT NULL,
    User_name varchar(50) NOT NULL,
    User_password varchar(255) NOT NULL,
    User_role varchar(1) NOT NULL
);


INSERT INTO Departments( Dept_Code, Dept_Name) 
Values ("MFP", "Marketing & Finance"),
("RD","Research & Development"), 
("IT", "IT"), 
("HR", "Human Resources"),
("CS", "Customer Service"); 


-- 1 for CEO and 2 for Branch Manager
INSERT INTO Users(FName, LName, User_name, User_password, User_role) 
Values ("Deborah", "Boateng", "dboateng", "123", "2"),
("Michelle", "Ansah", "mansah", "123", "2"),
("Mathew", "Davis", "mdavis", "123", "1"),
("Nana", "Osei", "nosei", "123", "1"),
("Tasha", "Kent", "tkent", "123", "2");


INSERT INTO Employee (Employee_ID, FName, LName, Gender, Date_of_Birth, Company_Email, Personal_Email, Address, Dept_Code,Date_of_Employment ) 
Values ("EMP00001", "Kwaku", "Sampson", 1, "1997-09-22", "sampson.kwaku@amdInternal.cm","skwaku@gmail.com", "3 Coconut Street", "RD", "2020-10-22"),  
("EMP00002", "Deborah", "Boateng", 0, "2000-01-12", "boateng.deborah@amdInternal.cm","boatdeborah@gmail.com", "17 Drake Street", "MFP", "2022-05-22"),  
("EMP00003", "Mathew", "Davis", 1, "2001-06-19", "davis.mathew@amdInternal.cm", "dmathew@gmail.com", "2 Banana Street", "RD","2019-05-13"),  
("EMP00004", "Michelle", "Ansah", 0, "1999-03-16", "ansah.michelle@amdInternal.cm","amichelle@gmail.com", "26 Jump Street", "RD", "2021-05-13"),  
("EMP00005", "Ama", "Johnson", 0, "2000-12-5", "johnson.patricia@amdInternal.cm","jpatricia@gmail.com", "14 Green Street", "HR", "2019-09-19"), 
("EMP00006", "David", "Smith", 1, "2001-07-21", "smith.david@amdInternal.cm","smithdavid@yahoo.com", "5 Donald Street", "MFP","2019-09-13"), 
("EMP00007", "Bob", "Hawkins", 1, "1999-10-19", "hawkins.bob@amdInternal.cm","hawkinsbob@gmail.com", "2 Orange Lane", "RD","2010-10-13"), 
("EMP00008", "Akosua", "Scott", 0, "1997-11-5", "scott.akosua@amdInternal.cm","scottkosua@gmail.com", "30 Rangoon Street", "MFP", "2019-11-13"), 
("EMP00009", "Aliyah", "Brown", 0, "2003-11-30", "brown.aliyah@amdInternal.cm","bliyahrown@yahoo.com", "8 Tiger Street", "IT","2021-02-12"), 
("EMP00010", "Derrick", "Black", 1, "1991-03-14", "black.derrick@amdInternal.cm","bderrickbb@gmail.cm", "11 Venza Lane", "CS","2019-09-1"), 
("EMP00011", "Tasha", "Kent", 0, "1991-02-8", "kent.tasha@amdInternal.cm","kent.tasha@gmail.com", "13 King Street", "CS","2021-05-13"), 
("EMP00012", "Barry", "Allen", 1, "2000-01-9", "allen.barry@amdInternal.cm","abarry22@yahoo.com", "10 Watermelon Street", "IT", "2022-05-22"), 
("EMP00013", "Bruce", "Wayne" ,1, "1915-04-7", "wayne.bruce@amdInternal.cm","wayne.bruce@icloud.com", "3 Wayne Street", "RD","2022-02-2"), 
("EMP00014", "Dinah", "Mensah", 0, "1998-09-13", "mensah.dinah@amdInternal.cm","mensadinah@icloud.com", "27 Orange Lane", "HR","2017-05-2"), 
("EMP00015", "Kwabena", "Stone", 1, "2002-08-23", "stone.kwabena@amdInternal.cm","stkwabena@gmail.com", "19 Justice Street", "CS","2020-05-5"),
("EMP00016", "Sara", "Johnson", 0, "1995-12-12", "johnson.sara@amdInternal.cm", "sjohnson@yahoo.com", "16 Park Street", "IT", "2020-08-01"),
("EMP00017", "Daniel", "Garcia", 1, "1993-02-21", "garcia.daniel@amdInternal.cm", "dgarcia@gmail.com", "7 Oak Avenue", "MFP", "2021-03-15"),
("EMP00018", "Emily", "Chen", 0, "1998-06-05", "chen.emily@amdInternal.cm", "echen@hotmail.com", "25 Maple Road", "RD", "2019-01-15"),
("EMP00019", "Isaac", "Lee", 1, "2000-09-30", "lee.isaac@amdInternal.cm", "ilee@yahoo.com", "12 Elm Street", "CS", "2021-11-10"),
("EMP00020", "Avery", "Taylor", 0, "1999-11-07", "taylor.avery@amdInternal.cm", "ataylor@gmail.com", "18 Pine Drive", "HR", "2022-02-03"),
("EMP00021", "Nana", "Osei", 1, "1995-02-18", "osei.nana@amdInternal.cm","oseinana@yahoo.com", "4 Mango Lane", "IT", "2021-06-01"),
("EMP00022", "Kwasi", "Amoah", 1, "1998-08-10", "amoah.kwasi@amdInternal.cm","kamoah@gmail.com", "20 River Street", "CS", "2022-01-13"),
("EMP00023", "Kwame", "Owusu", 1, "1996-04-02", "owusu.kwame@amdInternal.cm","owusuk@gmail.com", "14 Asante Street", "MFP","2021-03-15"),
("EMP00024", "Yaa", "Frimpong", 0, "2001-05-07", "frimpong.yaa@amdInternal.cm","yaafrimpong@gmail.com", "23 Atlantic Avenue", "RD", "2022-05-22"),
("EMP00025", "Nana", "Ampadu", 1, "1997-09-25", "ampadu.nana@amdInternal.cm","ampadunana@yahoo.com", "19 Lapaz Road", "IT", "2020-09-18"),
("EMP00026", "Kwabena", "Boakye", 1, "2002-07-14", "boakye.kwabena@amdInternal.cm","boakye22@gmail.com", "2 Ankaful Street", "CS","2021-02-12"),
("EMP00027", "Ama", "Asare", 0, "2000-11-23", "asare.ama@amdInternal.cm","a.asare@gmail.com", "15 Adu Street", "MFP","2022-02-10"),
("EMP00028", "Samuel", "Annan", 1, "1999-12-15", "annan.samuel@amdInternal.cm","samuelannan@yahoo.com", "6 Adenta Road", "RD","2021-08-02"),
("EMP00029", "Sylvia", "Arthur", 0, "1995-01-27", "arthur.sylvia@amdInternal.cm","arthur.sylvia@gmail.com", "3 Cantonments Street", "IT", "2018-11-01"),
("EMP00030", "Abena", "Addo", 0, "1998-04-10", "addo.abena@amdInternal.cm","abena.addo@gmail.com", "8 Asylum Down Road", "HR","2019-12-12"),
("EMP00031", "Bright", "Owusu", 1, "2000-10-11", "owusu.bright@amdInternal.cm","brightowusu22@gmail.com", "16 Lashibi Street", "IT", "2021-06-18"),
("EMP00032", "Grace", "Boakye", 0, "2001-11-07", "boakye.grace@amdInternal.cm","g.boakye@yahoo.com", "27 Dome Street", "MFP","2022-03-19"),
("EMP00033", "Evelyn", "Mensah", 0, "1994-03-07", "mensah.evelyn@amdInternal.cm", "evie.mensah@gmail.com", "12 Spintex Road", "MFP", "2019-05-10"),
("EMP00034", "David", "Asante", 1, "1997-02-14", "asante.david@amdInternal.cm", "david_asante@yahoo.com", "15 Legon Street", "RD", "2020-10-22"),
("EMP00035", "Linda", "Boahen", 0, "1993-07-25","boahen.linda@amdInternal.cm", "linda_boahen@gmail.com", "22 Ridge Avenue", "HR", "2017-09-01"),
("EMP00036", "Isaac", "Agyapong", 1, "1996-08-08", "agya.isaac@amdInternal.cm", "isaac_agyapong@gmail.com", "9 Achimota Street", "IT", "2020-12-05"),
("EMP00037", "Maame", "Kyerewaa", 0, "1999-09-18", "kyerewaa.maame@amdInternal.cm", "maame_kye@yahoo.com", "10 Adabraka Road", "RD", "2021-11-14"),
("EMP00038", "Kwabena", "Ofori", 1, "1991-05-30", "ofori.kwabena@amdInternal.cm", "kwabena_ofori@hotmail.com", "7 Abossey Okai Street", "MFP", "2018-06-27"),
("EMP00039", "Gifty", "Ansong", 0, "1995-04-20", "ansong.gifty@amdInternal.cm", "giftyansong@gmail.com", "18 Haatso Road", "IT", "2020-02-14"),
("EMP00040", "Yaw", "Boateng", 1, "1998-11-03", "boateng.yw@amdInternal.cm", "y.boateng@yahoo.com", "20 Osu Avenue", "RD", "2021-09-10"),
("EMP00041", "Faustina", "Adjei", 0, "1997-06-12", "adjei.faustina@amdInternal.cm", "fausty_adjei@gmail.com", "5 Teshie Street", "MFP", "2020-03-16"),
("EMP00042", "Michael", "Ansah", 1, "1992-12-01", "ansah.michael@amdInternal.cm", "mike_ansah@hotmail.com", "11 Madina Road", "IT", "2019-07-03"),
("EMP00043", "Alice", "Gyamfi", 0, "1994-09-23", "gyamfi.alice@amdInternal.cm", "alicegyamfi@yahoo.com", "14 Dansoman Street", "RD", "2021-03-12"),
("EMP00044", "Kofi", "Nyantakyi", 1, "1996-07-17", "nyantakyi.kofi@amdInternal.cm", "kofi_nyantakyi@gmail.com", "8 Tesano Street", "MFP", "2020-12-28"),
("EMP00045", "Adwoa", "Owusu", 0, "1999-02-11", "owusu.adwoa@amdInternal.cm", "adwoaowusu22@yahoo.com", "17 North Kaneshie Road", "IT", "2022-01-02"),
("EMP00046", "Emmanuel", "Aidoo", 1, "1993-10-29", "aidoo.emmanuel@amdInternal.cm", "emmanuelaidoo@gmail.com", "22 Kasoa Street", "RD", "2018-12-14"),
("EMP00047", "Ama", "Asante", 0, "1995-08-13", "asante.ama@amdInternal.cm", "amaasante22@gmail.com", "10 East Legon Road", "HR", "2021-11-02"),
("EMP00048", "Yaw", "Boateng", 1, "1997-05-06", "boateng.yaw@amdInternal.cm", "y.boateng@hotmail.com", "5 Abeka Road", "IT", "2019-06-21"),
("EMP00049", "Akosua", "Gyan", 0, "2000-12-31", "gyan.akosua@amdInternal.cm", "akosua_gyan@yahoo.com", "20 Osu Street", "MFP", "2022-02-19"),
("EMP00050", "Joseph", "Acheampong", 1, "1998-03-04", "acheampong.joseph@amdInternal.cm", "joseph_acheampong@gmail.com", "6 Tema Road", "RD", "2021-10-10");


