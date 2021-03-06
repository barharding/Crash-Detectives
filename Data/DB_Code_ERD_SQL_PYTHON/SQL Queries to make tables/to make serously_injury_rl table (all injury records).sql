
select 
	   a.[ACCNUM]
      ,a.[ObjectId]
      ,a.[INVTYPE]
      ,a.[INVAGE]
      ,b.[INJURY]
      ,a.[FATAL_NO]
      ,a.[INITDIR]
      ,a.[VEHTYPE]
      ,a.[MANOEUVER]
      ,a.[DRIVACT]
      ,a.[DRIVCOND]
      ,a.[PEDTYPE]
      ,a.[PEDACT]
      ,a.[PEDCOND]
      ,a.[CYCLISTYPE]
      ,a.[CYCACT]
      ,a.[CYCCOND]
      ,a.[PEDESTRIAN]
      ,a.[CYCLIST]
      ,a.[AUTOMOBILE]
      ,a.[MOTORCYCLE]
      ,a.[TRUCK]
      ,a.[TRSN_CITY_VEH]
      ,a.[EMERG_VEH]
      ,a.[PASSENGER]
      ,a.[SPEEDING]
      ,a.[AG_DRIV]
      ,a.[REDLIGHT]
      ,a.[ALCOHOL]
      ,a.[DISABILITY]
	  ,c.[YEAR]
      ,c.[DATE]
      ,c.[TIME]
      ,c.[HOUR]
      ,c.[STREET1]
      ,c.[STREET2]
      ,c.[OFFSET]
      ,c.[ROAD_CLASS] as ROAD_CLASS_ID
      ,c.[DISTRICT]
      ,c.[WARDNUM]
      ,c.[DIVISION]
      ,c.[LOCCOORD]
      ,c.[ACCLOC]
      ,c.[TRAFFCTL]
      ,c.[VISIBILITY]
      ,c.[LIGHT]
      ,c.[RDSFCOND]
      ,c.[ACCLASS]
      ,c.[IMPACTYPE]
      ,c.[POLICE_DIVISION]
      ,c.[HOOD_ID]
      ,c.[NEIGHBOURHOOD]
      ,c.[collision_lat]
      ,c.[collision_long]
      ,c.[red_light_lat]
      ,c.[red_light_long]
      ,c.[right_light_camera]
      ,c.[LINEAR_NAME_FULL_1]
      ,c.[LINEAR_NAME_FULL_2]
      ,c.[ACTIVATION_DATE]
      ,d.[ROAD_CLASS]
into 
uot.dbo.seriously_injury_rl
from [dbo].[accident_objects] a
left join [dbo].[injury] b on a.[Injury] = b.INJURY_ID
left join [dbo].[collisions_rl] c on a.ACCNUM = c.ACCNUM
left join [dbo].[road_class] d on c.road_class = d.road_class_id

