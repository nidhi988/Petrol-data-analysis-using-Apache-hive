#creating table in hive and loading of data


CREATE TABLE petrol (distributer_id string,distributer_name string,amt_IN string,amy_OUT string,vol_IN int,vol_OUT int,year int)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS textfile; 


LOAD DATA LOCAL INPATH '/home/user/petrol.txt' INTO TABLE petrol;

SELECT distributer_name,SUM(vol_OUT) from petrol GROUP BY distributer_name;

SELECT distributer_id,vol_OUT FROM petrol ORDER BY vol_OUT LIMIT 10;



