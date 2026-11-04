CREATE VIEW [dbo].[FebTrip] AS SELECT 
     D.DayName, 
     AVG(T.TripDurationSeconds) AS AvgDuration, 
     AVG(T.TripDistanceMiles) AS AvgDistance 
 FROM dbo.Trip AS T
 JOIN dbo.[Date] AS D
     ON T.[DateID]=D.[DateID]
 WHERE D.Month = '02'
 GROUP BY D.DayName

GO