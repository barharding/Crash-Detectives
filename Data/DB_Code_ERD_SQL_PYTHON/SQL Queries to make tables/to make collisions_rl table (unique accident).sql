
select 
	a.[ACCNUM]
      ,a.[YEAR]
      ,a.[DATE]
      ,a.[TIME]
      ,a.[HOUR]
      ,a.[STREET1]
      ,a.[STREET2]
      ,a.[OFFSET]
      ,a.[ROAD_CLASS]
      ,a.[DISTRICT]
      ,a.[WARDNUM]
      ,a.[DIVISION]
      ,a.[LOCCOORD]
      ,a.[ACCLOC]
      ,a.[TRAFFCTL]
      ,a.[VISIBILITY]
      ,a.[LIGHT]
      ,a.[RDSFCOND]
      ,a.[ACCLASS]
      ,a.[IMPACTYPE]
      ,a.[POLICE_DIVISION]
      ,a.[HOOD_ID]
      ,a.[NEIGHBOURHOOD]
      ,a.lat as collision_lat
	  ,a.long as collision_long
	  ,b.lat as red_light_lat
	  ,b.long as red_light_long
	  ,case when b.lat is null then 'N' else 'Y' end as right_light_camera
	  ,b.[LINEAR_NAME_FULL_1]
      ,b.[LINEAR_NAME_FULL_2]
	  ,b.ACTIVATION_DATE
into uot.dbo.collisions_rl
from


(SELECT * , Substring(
				[geometry], 
				Len(LEFT([geometry], Charindex ('(', [geometry])))+ 1, /** starting index **/
				Len([geometry]) 
				- Len(LEFT([geometry], Charindex ('(', [geometry]))) 
				
				- Len(RIGHT([geometry], Len([geometry]) - Charindex (')', [geometry]))) - 1) /** ending index **/ as geocode,
left(substring([geometry], charindex('(',[geometry])+1, charindex(',',[geometry],charindex('(',[geometry]))-charindex('(',[geometry])-1),8)  as lat,
left(substring([geometry], charindex(',',[geometry],charindex('(',[geometry]))+1, charindex(')',[geometry])-charindex(',',[geometry],charindex('(',[geometry]))-1),8) as long

FROM   [uot].[dbo].[unique_accidents] ) a

left join

(SELECT [LINEAR_NAME_FULL_1]
      ,[LINEAR_NAME_FULL_2]
	  ,max(ACTIVATION_DATE) as ACTIVATION_DATE,
left(substring([geometry], charindex('(',[geometry])+1, charindex(',',[geometry],charindex('(',[geometry]))-charindex('(',[geometry])-1),8)  as lat,
left(substring([geometry], charindex(',',[geometry],charindex('(',[geometry]))+1, charindex(')',[geometry])-charindex(',',[geometry],charindex('(',[geometry]))-1),8) as long

FROM   [uot].[dbo].Red_Light_Cameras
group by LINEAR_NAME_FULL_1, LINEAR_NAME_FULL_2, left(substring([geometry], charindex('(',[geometry])+1, charindex(',',[geometry],charindex('(',[geometry]))-charindex('(',[geometry])-1),8)
, left(substring([geometry], charindex(',',[geometry],charindex('(',[geometry]))+1, charindex(')',[geometry])-charindex(',',[geometry],charindex('(',[geometry]))-1),8)) b
on a.lat=b.lat and a.long=b.long

