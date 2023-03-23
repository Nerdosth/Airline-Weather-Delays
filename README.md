# Airline-Weather-Delays
Project 2 

## Proposal

As new employees at a travel agency, we have been asked to create a database that will allow the company to compare weather patterns and flight delays. The company wants to predict better how changing weather patterns over the year will impact travel plans in certain months. This information will better allow travel agents to plan trips for customers. 

## Limitations : 

1. The initial goal was to use an API to pull historical weather data. Upon further research, this method was cost prohibitive and not within the project's scope.

2. To pivot, we found a weather events database on Kaggle with airport code data. However, we learned the airport codes were not for International or Regional but for small local airports. We could have used the city location but determined that it would be an unreliable method for analysis. Therefore, we used only one datasource for the purpose of this project. 


## Data Sources Used: 

Airline Delays: 
https://www.kaggle.com/datasets/ryanjt/airline-delay-cause


## Extraction: 

CSV sourced from a Kaggle Data Base: 

<img width="1241" alt="image" src="https://user-images.githubusercontent.com/76061893/209041828-47c8d535-3cb5-4eb1-abd5-e3be466d5a41.png">

## Transform: 

In order for us to build out databases to load into a database, we needed to normalize the data. Remove unwanted columns and rename columns.   

The most important normalization was to Split out City, State, and Airport name from the original airport_name column. 
<img width="722" alt="image" src="https://user-images.githubusercontent.com/76061893/209042317-0788e66b-65f2-49c9-a324-a5eb69acca70.png"><br>
<img width="260" alt="image" src="https://user-images.githubusercontent.com/76061893/209052270-1d99b141-a7db-4695-a28f-234546ab6458.png">

Then we created a total of four databases.

Airport information: <br>
<img width="748" alt="image" src="https://user-images.githubusercontent.com/76061893/209052458-2bd99f62-b876-4a43-9f6e-de71e5ac78a0.png">

Airline information: <br>
<img width="729" alt="image" src="https://user-images.githubusercontent.com/76061893/209052669-9a31996e-409d-4cf7-babd-2fc4523a6ecd.png">

State information: <br>
<img width="581" alt="image" src="https://user-images.githubusercontent.com/76061893/209052818-d9685435-e7a3-49b0-9931-ac03234fd493.png">


Weather Delay information: <br>
<img width="887" alt="image" src="https://user-images.githubusercontent.com/76061893/209052621-5838252c-b9da-4dc8-ac11-9661fcfc5154.png">



## Load:
Using Python code, we loaded the four dataframes into the SQL database. Each were loaded in similarly as the image below. Two dataframes, airport and delay_data, required merges with the other dataframes to add keys.
![image](https://user-images.githubusercontent.com/111237645/209050346-892e8382-a29b-4462-a3d0-f452a87d13af.png)

## Queries:
Examples of queries to run on this database. Simple queries showed that Georgia has the greatest delay counts and Comair is the carrier with the greatest average delay counts.

![Average delay by carrier](https://user-images.githubusercontent.com/111237645/209050570-0b1d5e3d-0035-420d-a5d1-5789e9fa2dd3.png)

![average delay by state](https://user-images.githubusercontent.com/111237645/209050582-407d79f2-7d1e-4fc0-960d-0c170b97c898.png)


