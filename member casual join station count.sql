WITH member_favorite_station AS(
  SELECT 
    start_station_name,
    count(ride_id) AS member_station_cnt
  FROM `turing-runner-482109-q2.Cyclistic.cyclistic_data`
  WHERE member_casual = 'member'
  GROUP BY start_station_name
),

casual_favorite_station AS(
  SELECT 
    start_station_name,
    count(ride_id) AS casual_station_cnt
  FROM `turing-runner-482109-q2.Cyclistic.cyclistic_data`
  WHERE member_casual = 'casual'
  GROUP BY start_station_name
)

SELECT
  c.start_station_name,
  c.casual_station_cnt,
  m.member_station_cnt
FROM casual_favorite_station AS c
INNER JOIN member_favorite_station AS m
ON c.start_station_name = m.start_station_name
ORDER BY c.casual_station_cnt DESC
