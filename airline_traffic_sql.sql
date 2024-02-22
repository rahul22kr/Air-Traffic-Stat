select * from airline_traffic.data;

#Where passenger greater than 1000
SELECT * FROM airline_traffic.data WHERE `Passenger Count` > 1000;

#Passengers each year
SELECT Year, SUM(`Passenger Count`) AS TotalPassengers FROM airline_traffic.data GROUP BY Year;

#number of records for each activity type:
SELECT `Activity_Type_Code`, COUNT(*) AS RecordCount
FROM airline_traffic.data
GROUP BY `Activity_Type_Code`;

SELECT *
FROM airline_traffic.data
WHERE `Passenger Count` > 1000 AND `Activity_Type_Code` = 'Deplaned';

 #top 10 airports with the highest passenger count:
 SELECT `Operating_Airline`, SUM(`Passenger Count`) AS TotalPassengers
FROM airline_traffic.data
GROUP BY `Operating_Airline`
ORDER BY TotalPassengers DESC
LIMIT 10;

#Total passenger count for each month and year:
SELECT `Operating_Airline`, `Month`, AVG(`Passenger Count`) AS AvgPassengers
FROM airline_traffic.data
WHERE `Operating_Airline` = 'ATA Airlines'
GROUP BY `Operating_Airline`, `Month`;

#Average passenger count for each operating airline:...........................
SELECT `Operating_Airline`, AVG(`Passenger Count`) AS AveragePassengers
FROM airline_traffic.data
GROUP BY `Operating_Airline`;

#Records where the published airline is not the same as the operating airline:...............
SELECT *
FROM airline_traffic.data
WHERE `Published_Airline` <> `Operating_Airline`;

#Top 5 Busiest Airports
SELECT `Operating_Airline`, SUM(`Passenger Count`) AS TotalPassengers
FROM airline_traffic.data
GROUP BY `Operating_Airline`
ORDER BY TotalPassengers DESC
LIMIT 5;

#Records where the published airline's IATA code does not match the operating airline's IATA code:
SELECT *
FROM airline_traffic.data
WHERE `Published_Airline_IATA_Code` <> `Operating_Airline_IATA_Code`;








