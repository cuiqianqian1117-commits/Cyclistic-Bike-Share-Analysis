#Objective: to now the average ride length and ride count of two kinds of members in 7 weekdays
SELECT 
  member_casual,
  day_of_week,
  ROUND(AVG(ride_length)/60,0) AS avg_length_min,
  COUNT(ride_id) AS cnt_ride
FROM `turing-runner-482109-q2.Cyclistic.cyclistic_data` 
GROUP BY member_casual,day_of_week
ORDER BY member_casual,day_of_week ASC