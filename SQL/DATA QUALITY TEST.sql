/*
DATA quality tests

1. The DATA needs to be 100 records of Youtube channels ( row count test )			(passed)
2. The DATA needs 4 fields ( column test )											(passed)
3. The channel name clumn must be string format , and the other columns must be numerical data types (passed)
4. Duplicate count check (passed)

Row count - 100 (passed)
Column count - 4 

Data types

channel_name = VARCHAR
total_subscribers = INT
total_views = INT
total_videos = INT

duplicate_count = 0 
*/

--Row count check

select count(*) from view_uk_youtubers_2024

-- Column count check

SELECT count(*) as column_count
from  INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'view_uk_youtubers_2024'


-- DATA TYPE CHECK

SELECT 
	COLUMN_NAME,
	DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'view_uk_youtubers_2024'


-- Duplicate records check 

SELECT channel_name, count(*) as duplicate_count
from view_uk_youtubers_2024
group by channel_name
having count(*) > 1