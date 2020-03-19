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
Select UniqueCarrier, colYear, colMonth, SUM(Cancelled) as total_cancelations
from flights 
GROUP BY UniqueCarrier, colYear, colMonth
HAVING total_cancelations > 0
Order by total_cancelations DESC, colYear ASC, colMonth ASC

--6)
Select Tailnum, SUM(Distance)
from flights
Group by Tailnum
Order by SUM(Distance) DESC
LIMIT 10

--7)
Select UniqueCarrier, AVG(ArrDelay) as media_retraso
from flights
GROUP BY UniqueCarrier
HAVING media_retraso > 10
ORDER BY media_retraso DESC









