SELECT
  start_station_name,
  start_lat,
  start_lng
FROM `turing-runner-482109-q2.Cyclistic.cyclistic_data`
WHERE start_station_name IS NOT NULL
GROUP BY start_station_name,start_lat,start_lng