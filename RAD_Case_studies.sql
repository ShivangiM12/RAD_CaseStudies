CREATE DATABASE  RAD_analysis;
CREATE TABLE Accidents (
    Accident_Index VARCHAR(20) PRIMARY KEY,
    Accident_Date DATE,
    Day_of_Week VARCHAR(20),
    Latitude FLOAT,
    Longitude FLOAT,
    Number_of_Casualties INT,
    Number_of_Vehicles INT,
    Police_Force VARCHAR(50),
    Speed_limit INT,
    Time TIME
);

CREATE TABLE Location (
    Accident_Index VARCHAR(20),
    Junction_Control VARCHAR(50),
    Junction_Detail VARCHAR(50),
    Local_Authority_District VARCHAR(50),
    Carriageway_Hazards VARCHAR(50),
    Road_Surface_Conditions VARCHAR(50),
    Road_Type VARCHAR(50),
    Urban_or_Rural_Area VARCHAR(20),
    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
);

CREATE TABLE Accident_Severity (
    Accident_Index VARCHAR(20),
    Accident_Severity VARCHAR(20),
    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
);

CREATE TABLE Light_Conditions (
    Accident_Index VARCHAR(20),
    Light_Conditions VARCHAR(50),
    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
);
CREATE TABLE Vehicle_Type (
    Accident_Index VARCHAR(20),
    Vehicle_Type VARCHAR(50),
    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
);
CREATE TABLE Weather_Conditions (
    Accident_Index VARCHAR(20),
    Weather_Conditions VARCHAR(50),
    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
);


INSERT INTO Accidents (Accident_Index, Accident_Date, Day_of_Week, Latitude, Longitude, Number_of_Casualties, Number_of_Vehicles, Police_Force, Speed_limit, Time)
VALUES
('BS0000001', '2021-01-01', 'Thursday', 51.512273, -0.201349, 1, 2, 'Metropolitan Police', 30, '15:11'),
('BS0000002', '2021-01-05', 'Monday', 51.514399, -0.199248, 11, 2, 'Metropolitan Police', 30, '10:59'),
('BS0000003', '2021-01-04', 'Sunday', 51.486668, -0.179599, 1, 2, 'Metropolitan Police', 30, '14:19'),
('BS0000004', '2021-01-05', 'Monday', 51.507804, -0.20311, 1, 2, 'Metropolitan Police', 30, '08:10'),
('BS0000005', '2021-01-06', 'Tuesday', 51.482076, -0.173445, 1, 2, 'Metropolitan Police', 30, '17:25'),
('BS0000006', '2021-01-01', 'Thursday', 51.493415, -0.185525, 3, 2, 'Metropolitan Police', 30, '11:48'),
('BS0000007', '2021-01-08', 'Thursday', 51.480177, -0.178561, 1, 2, 'Metropolitan Police', 30, '13:58'),
('BS0000008', '2021-01-02', 'Friday', 51.491957, -0.178524, 1, 1, 'Metropolitan Police', 30, '13:18'),
('BS0000009', '2021-01-07', 'Wednesday', 51.49646, -0.167395, 2, 1, 'Metropolitan Police', 30, '12:15'),
('BS0000010', '2021-01-10', 'Saturday', 51.48115, -0.183275, 1, 1, 'Metropolitan Police', 30, '09:52'),
('BS0000011', '2021-01-07', 'Wednesday', 51.482076, -0.173445, 1, 2, 'Metropolitan Police', 30, '00:09'),
('BS0000012', '2021-01-16', 'Friday', 51.494995, -0.183013, 1, 1, 'Metropolitan Police', 30, '17:49'),
('BS0000013', '2021-01-12', 'Monday', 51.498778, -0.206779, 1, 2, 'Metropolitan Police', 30, '14:00'),
('BS0000014', '2021-01-09', 'Friday', 51.506187, -0.209082, 1, 2, 'Metropolitan Police', 30, '08:15'),
('BS0000015', '2021-01-17', 'Saturday', 51.493077, -0.169548, 1, 2, 'Metropolitan Police', 30, '12:15');




INSERT INTO Location (Accident_Index, Junction_Control, Junction_Detail, Local_Authority_District, Carriageway_Hazards, Road_Surface_Conditions, Road_Type, Urban_or_Rural_Area)
VALUES
('BS0000001', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Dry', 'One way street', 'Urban'),
('BS0000002', 'Give way or uncontrolled', 'Crossroads', 'Kensington and Chelsea', 'None', 'Wet or damp', 'Single carriageway', 'Urban'),
('BS0000003', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Rural'),
('BS0000004', 'Auto traffic signal', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Frost or ice', 'Single carriageway', 'Urban'),
('BS0000005', 'Auto traffic signal', 'Crossroads', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Rural'),
('BS0000006', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Rural'),
('BS0000007', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Urban'),
('BS0000008', 'Auto traffic signal', 'Crossroads', 'Kensington and Chelsea', 'None', 'Dry', 'Dual carriageway', 'Urban'),
('BS0000009', 'Give way or uncontrolled', 'T or staggered junction','Kensington and Chelsea','None','Dry','Dual carriageway', 'Rural')
('BS0000010', 'Auto traffic signal', 'Crossroads', 'Kensington and Chelsea', 'None', 'Wet or damp', 'Single carriageway', 'Urban'),
('BS0000011', 'Auto traffic signal', 'Crossroads', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Urban'),
('BS0000012', 'Auto traffic signal', 'Crossroads', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Urban'),
('BS0000013', 'Data missing or out of range', 'Not at junction or within 20 metres', 'Kensington and Chelsea', 'None', 'Wet or damp', 'Single carriageway', 'Urban'),
('BS0000014', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Wet or damp', 'Single carriageway', 'Urban'),
('BS0000015', 'Give way or uncontrolled', 'T or staggered junction', 'Kensington and Chelsea', 'None', 'Dry', 'Single carriageway', 'Urban');



INSERT INTO Accident_Severity (Accident_Index, Accident_Severity)
VALUES
('BS0000001', 'Serious'),
('BS0000002', 'Serious'),
('BS0000003', 'Slight'),
('BS0000004', 'Serious'),
('BS0000005', 'Serious'),
('BS0000006', 'Slight'),
('BS0000007', 'Serious'),
('BS0000008', 'Slight'),
('BS0000009', 'Slight'),
('BS0000010', 'Slight'),
('BS0000011', 'Slight'),
('BS0000012', 'Slight'),
('BS0000013', 'Slight'),
('BS0000014', 'Slight'),
('BS0000015', 'Slight');

INSERT INTO Light_Conditions (Accident_Index, Light_Conditions)
VALUES
('BS0000001', 'Daylight'),
('BS0000002', 'Daylight'),
('BS0000003', 'Daylight'),
('BS0000004', 'Daylight'),
('BS0000005', 'Darkness - lights lit'),
('BS0000006', 'Daylight'),
('BS0000007', 'Daylight'),
('BS0000008', 'Daylight'),
('BS0000009', 'Daylight'),
('BS0000010', 'Daylight'),
('BS0000011', 'Darkness - lights lit'),
('BS0000012', 'Darkness - lights lit'),
('BS0000013', 'Daylight'),
('BS0000014', 'Daylight'),
('BS0000015', 'Daylight');
INSERT INTO Weather_Conditions (Accident_Index, Weather_Conditions)
VALUES
('BS0000001', 'Fine no high winds'),
('BS0000002', 'Fine no high winds'),
('BS0000003', 'Fine no high winds'),
('BS0000004', 'Other'),
('BS0000005', 'Fine no high winds'),
('BS0000006', 'Fine no high winds'),
('BS0000007', 'Fine no high winds'),
('BS0000008', 'Fine no high winds'),
('BS0000009', 'Fine no high winds'),
('BS0000010', 'Other'),
('BS0000011', 'Fine no high winds'),
('BS0000012', 'Fine no high winds'),
('BS0000013', 'Raining no high winds'),
('BS0000014', 'Raining no high winds'),
('BS0000015', 'Fine no high winds');


INSERT INTO Vehicle_Type (Accident_Index, Vehicle_Type)
VALUES
('BS0000001', 'Car'),
('BS0000002', 'Taxi/Private hire car'),
('BS0000003', 'Taxi/Private hire car'),
('BS0000004', 'Motorcycle over 500cc'),
('BS0000005', 'Car'),
('BS0000006', 'Car'),
('BS0000007', 'Motorcycle over 500cc'),
('BS0000008', 'Car'),
('BS0000009', 'Van / Goods 3.5 tonnes mgw or under'),
('BS0000010', 'Car'),
('BS0000011', 'Car'),
('BS0000012', 'Car'),																																																	
('BS0000013', 'Car'),
('BS0000014', 'Car'),
('BS0000015', 'Car');


/*
Q1. How many accidents have occured in urban areas vs rural areas ?
*/


SELECT
    Urban_or_Rural_Area,
    COUNT(*) AS AccidentCount
FROM
    Location
GROUP BY
    Urban_or_Rural_Area;
--or we can see the accident percentage to anlyse where is more worse condition
SELECT 
    Urban_or_Rural_Area,
    COUNT(*) AS No_of_accidents,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Location) AS Accident_Percentage
FROM 
    Location
GROUP BY 
    Urban_or_Rural_Area;

/*
Q2. Which day of the week has the highest number of accidents ?
*/
SELECT
    Day_of_Week,
    COUNT(*) AS AccidentCount
FROM
    Accidents
GROUP BY
    Day_of_Week
ORDER BY
    AccidentCount DESC;

-- Second Approach

SELECT 
       Day_of_Week
     , COUNT(*) AS 'Most_Accidented_Day'
FROM Accidents
	GROUP BY Day_of_Week
    ORDER BY Most_Accidented_Day DESC;


/*
Q3 what is the count of accidents for each vehicle type
*/

SELECT
    Vehicle_Type,
    COUNT(*) AS AccidentCount
FROM
    Vehicle_Type
GROUP BY
    Vehicle_Type
ORDER BY
    AccidentCount DESC;

	select * from Weather_Conditions
	
	select * from Accidents
--counts the number of accidents with 'Slight' severity for each weather condition, and filter by severity.
	SELECT
    WC.Weather_Conditions,
    COUNT(*) AS 'No_of_accidents'
FROM
    Weather_Conditions WC
INNER JOIN
    Accident_Severity AS ASv ON WC.Accident_Index = ASv.Accident_Index
WHERE
    ASv.Accident_Severity = 'Slight'
GROUP BY
    WC.Weather_Conditions
ORDER BY
    No_of_accidents DESC;
--total no of accidents
select count(*) as total_accidents from Accidents

--aacident by road conditions

select * from Location
SELECT Road_Surface_Conditions, COUNT(*) AS AccidentsCount
FROM Location
GROUP BY Road_Surface_Conditions;

-- severity of accidents
select Accident_Severity,count(*) from Accident_Severity group by Accident_Severity


--vehicle type of accident reason
select Vehicle_Type,count(*) as VehicleCount from Vehicle_Type group by Vehicle_Type order by  VehicleCount desc
