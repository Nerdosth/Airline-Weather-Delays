# Airline-Weather-Delays
Project 2 

## Proposal

As new employees at a travel agency, we have been asked to create a database that will allow the company to compare weather patterns and flight delays. The company wants to predict better how changing weather patterns over the year will impact travel plans in certain months. This information will better allow travel agents to plan trips for customers. 

## Limitations : 

1. The initial goal was to use an API to pull historical weather data. Upon further research, this method was cost prohivitive and not within scope of the project. 

2. To pivot, we found a weather events database on kaggle with airport code data but learned the airport codes were not for International or Regional but rather small local airports only. 


## Data Sources: 

Airline Delays: 
https://www.kaggle.com/datasets/ryanjt/airline-delay-cause

## Extraction: 

Flat File sourced from a Kaggle Data Base: 

<img width="1241" alt="image" src="https://user-images.githubusercontent.com/76061893/209041828-47c8d535-3cb5-4eb1-abd5-e3be466d5a41.png">

## Transform: 

Split out City, State, and Airport name from the original airport_name column. 
<img width="722" alt="image" src="https://user-images.githubusercontent.com/76061893/209042317-0788e66b-65f2-49c9-a324-a5eb69acca70.png">

## Load:
Loading the four dataframes into the SQL database. Each were loaded in similarly as the image below. Two dataframes, airport and delay_data, required merges with the other dataframes to add keys.
![image](https://user-images.githubusercontent.com/111237645/209050346-892e8382-a29b-4462-a3d0-f452a87d13af.png)

## Queries:
Examples of queries to run on this database. Simple queries showed that Georgia has the greatest delay counts and Comair is the carrier with the greatest average delay counts.

![Average delay by carrier](https://user-images.githubusercontent.com/111237645/209050570-0b1d5e3d-0035-420d-a5d1-5789e9fa2dd3.png)

![average delay by state](https://user-images.githubusercontent.com/111237645/209050582-407d79f2-7d1e-4fc0-960d-0c170b97c898.png)


