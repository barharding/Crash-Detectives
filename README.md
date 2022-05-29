# Crash Detectives

![Crash Test Dummy](images/crash_test_banner.jpg)

## Overview
The purpose of this project is to explore an overall analysis of the City of Toronto serious injury or fatal accident data and the impact of red light cameras on reducing severity.

## Research Topic 

### Goal & Questions to be answered
The goal of this analysis is to provide the Toronto Police, City Planners, and general public insights on the effectivnes and impact of the redlight camera program on crash severity.

The null hypothesis is that redlight cameras on have no impact on crash severity.  The alternate hypothesis is redlight cameras reduce accident serverity.

Leveraging the Toronto Police traffic collision data and serious injury data sets additional areas of inquiry includes researching what additional features are correleated with severe accidents such as roadway types, light conditions, wet or dry roads, and time of day.


### Data Source Description

The dataset is used for this analysis is from the City of Toronto's Open Data Portal.  

The traffic colision file provides a history of all accidents in the City of Toronto which includes the geocoorindates for the nearest intersection, data and time of the collision, policde division, neighbourhood as well as if there were any fatalities.  The seriously injured or killed file is a rich data source describing the physical characteristics at the scene of the accident such as road type, road surface conditions, details regarding all people involved in the accident including age, etc...  The Red light file provides the date of activation for when red light cameras were installed and the location.  All three files provide geo location coordinates.

- Seriously injured/killed collisions data : [Dataset 1](https://open.toronto.ca/dataset/motor-vehicle-collisions-involving-killed-or-seriously-injured-persons/)
- Red light cameras data : [Dataset 2](https://open.toronto.ca/dataset/red-light-cameras/)
- Traffic collision data : [Dataset 3](https://open.toronto.ca/dataset/police-annual-statistical-report-traffic-collisions/) 

## Machine Learning
In our machine leaning approach, we will be using classification models, random forest and gradient boosting.

### Random Forest
As we know where the cameras are already installed, we will use the factors of the accidents at those locations to train our model to predict the location of red-light cameras based on the factors of traffic accidents. As there are many factors that affects a collision in an intersection, using a random forest enables feature randomness when building individual trees, to which the forest will make a more accurate prediction by committee. 

### Gradient Boosting
As major and more severe collisions occur infrequently compared to the whole scope of collisions, the model we build may hold some form of bias and skewness. In other words, the random forest may produce predictions solely on the factors that affect minor collisions. This would mean the false negatives could be locations where major accidents had occurred, and the camera could be impacting such collisions. Thus, we will also test and employ gradient boosting. Gradient boosting will weight the observations and put more weight on the major collisions and less on minor collisions as they will already be handled well during training. This should reduce the bias and skewness of the model. 

## Initial ML Results

![ML Results Summary](images/ML_Steps.png)


### Database

We will be storing our data in Postgres.
At present, we have created the ERD conceptual diagram for our database. But their is no releationship in those four columns. We did not force the relationship between the tables.
For Primary key and Foriegn key, we didn't decide on that because out of four, only two tables has ACCNUM (accident number) column in common. 
We are planning to create the relation in between the table based on their Geo location beacuse all the tables have geometry column in common.
   

## Communication Protocols

### Meetings

#### Regular Meeting Schedule
The team agrees to meet three times per week on Monday and Wednesday from 7pm-9pm and Saturdays from 10am-12pm.  These meetings will be held using Zoom in a breakout.

#### Adhoc Meetings
All other meetings will be scheduled on an adhoc basis when required and agreed to by all participants.  A Teams meeting will be arranged for these sessions.

#### Messaging Channel

The Crash-Detectives team channel has been set up to enable chat communications between team members.

## Roles & Responsibilities
Each of the team members is assigned one of the four roles as defined in module 20.  A summary of the role responsibilites can be found [here](https://github.com/barharding/Crash-Detectives/blob/main/images/roles_responsibilities.png).

## Project Team Members
- Aditi
- Bardhonia
- Kritika
- Richelle
