# Exploratory Data Analysis
----
The goal of this project is the investigate what causes not serious and serious accidents in hopes of preventing and decreasing the number of them. We tried to analyse different factors which casue the accidents and how Red Light Cameras helps in preventing these accidents.

The dataset consists of accident records from the Toronto over the course of 7 years. I hope to show the causes of these accidents through visualizations and can predict the severity of accidents which can further help us selecting our Algorithm for Machine Learning.

The Toronot Police collects and publishes (usually on an annual basis) detailed information about traffic accidents across the country. This information includes, but is not limited to, Red Light Cameras, geographical locations, weather conditions, type of vehicles, number of casualties and vehicle manoeuvres, making this a very interesting and comprehensive dataset for analysis and research.

#Importance of Analyzing Traffic Accidents
----
1) Accurately analyzing accidents can help governments to better the safety of their roads and highways. 
2) Identifying high areas of accidents and high areas of accident severity can highlight areas of concern.
3) It can also be beneficial to insurance companies looking to change their rates in different areas. 


----

Through visualizations and machine learning algorithms, areas of concern will be highlighted, and  the seriousness of accidents will be predicted as accurately as possible. 

----

Using EDA, I was able to conclude that where we have Red Light Cameras, there was less accidents and the Severity of the accident was low as compared to the areas without Red Light Cameras.

Steps involved in EDA:

1. Imported Required Libraries

1. Imported files and convert them to dataframe

1. Checked the types of data

1. Dropped the Duplicates and checking the unique values

1. Created columns for missing values, renaming columns

1. Created Visualizations

1. Created Maps using Leaflet for location

1. Created Heatmaps

  
----
We got Latitude and Longitudes in geojson form, so using RegEX get the Latitudes and Longitudes in different columns. 

![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/lat_long.PNG)

We have ACCNUM column value in wrong format. Truncated characters and change data type to int.

![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/ACCNUM.png)

We get rid of the columns that has not very useful or very less data. We changed the datatypes of few columns (like:Date, Latitudes and Longitudes). WE created new columns to get Month and Days of week in separate columns.

I have created Heatmaps to show the Accidents (based on Red Light Cameras) by week for each month from 2014-2020

![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/Heat_Map_With_Without_Camera.png)

I also built maps using Leaflet to show 
	-Red Light Camera locations in Toronto.
	
![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/Red_Light_Camera_Coordinates.PNG)
	
	-Locations of Accidents with Red Light Camera Intersections
	
![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/Accidents_in_Red%20Light_Camera_area.PNG)
	
	-Locations Of Accidents without Red Light Camera Intersections
	
![](https://github.com/barharding/Crash-Detectives/blob/main/EDA/Resources/Images/Accidents_Without_Camera_.PNG)

There were challenges in building the correlation graphs as we don't have numerical data in our database so used Matplotlib,seaborn (in heatmaps) and leaflet to show the visualizations for other factors causing accidents.









