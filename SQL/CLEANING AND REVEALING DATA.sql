/*
DATA cleaning steps i need 

1. Select unecessary columns by only selecting the ones we need
2. Extract the Youtube names from the columns 
3. Rename the column names 

*/

CREATE VIEW view_uk_youtubers_2024 as 

SELECT CAST(SUBSTRING(NOMBRE,1,CHARINDEX('@',NOMBRE) -1) as VARCHAR(100)) AS channel_name,
	total_subscribers,
	total_views,
	total_videos
from top_UK_youtubers_2024