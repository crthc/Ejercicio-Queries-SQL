-- 1) 
Select Count (*)FlightNum 
from flights;

-- 2)
Select Origin, AVG(ArrDelay), AVG(DepDelay) 
from flights group by Origin;

-- 3) 
Select Origin, colYear, colMonth, AVG(ArrDelay) 
from flights 
group by Origin, colYear, colMonth;

--4)
Select airports.city, flights.colYear, flights.colMonth, AVG(flights.ArrDelay)
From flights
LEFT JOIN airports 
ON flights.Origin = airports.City 
Group BY city, colYear, colMonth

--5)
Select UniqueCarrier, colYear, colMonth, SUM(Cancelled)
from flights 
GROUP BY UniqueCarrier
Order by SUM(Cancelled) DESC


--6)
Select Tailnum, SUM(Distance)
from flights
Group by Tailnum
Order by SUM(Distance) DESC
LIMIT 10

--7)
Select UniqueCarrier, AVG(ArrDelay)
from flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC








