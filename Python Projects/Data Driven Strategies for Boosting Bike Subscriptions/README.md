# Data-Driven-Strategies-for-Boosting-Bike-Subscriptions

## 1 Introduction
In this chapter the analysis process is shown using each tool. From importing the data in Excel, transforming it in Python and finally visualizing it in Power BI to find patterns and get insights of the data. 
## 2a Importing Data into Excel

![image](https://github.com/user-attachments/assets/1e41bf61-b33a-4559-bc7c-453dca5e005e)

The data contains 13 columns.
1.	ride_id – This column contains identification number for the bicycle rented
2.	rideable_type – This column contains the type of bicycle rented
3.	started_at – This column contains the time bike ride started
4.	ended_at – This column contains the time bike ride ended
5.	start_station_name – This column contains the station name bike ride started at
6.	start_station_id – This column contains the identification number for the station bike ride started at
7.	end_station_name – This column contains the station name bike ride ended at
8.	end_station_id – Identification number for the station ride ended at
9.	start_lat – latitude coordinates for ride start location
10.	start_lng – longitude coordinates for ride start location
11.	end_lat – latitude coordinates for ride end location
12.	end_lng – longitude coordinates for ride end location
13.	member_casual - The column contains whether the user is member or casual rider






## 2b Calculating Ride Length
Creating new column with the name ride_length to calculate the time length of the ride rented by subtracting ended_at (D column) – started_at (C column). 

![image](https://github.com/user-attachments/assets/aa8331f4-10e3-4e22-a944-c03ba43f1ea0)

Formatted ride_length as HH:MM:SS to check the duration of the ride.

## 2c Calculating Weekday for the day ride started
Creating new column with the name day_of_week to calculate at which week day do riders rent the bicycle. Calculated using formula =WEEKDAY(C2,2)

![image](https://github.com/user-attachments/assets/8b8a5e7d-b3de-4f44-91ed-1050957fa56a)

Formatted as numbers, 1 = Monday - 7 = Sunday. 




## 3a Cleaning the dataset using Python
Python Programming language is used here for cleaning the data as it is one of the best programming languages for data manipulation, it is widely used in data analysis industry.
It is easy to read and enables one to work with large amount of data easily and is enriched with huge number of libraries such as, Pandas, NumPy, Matplotlib, etc. 
For this case, Pandas library is used to clean the dataset. Pandas library is popular python library used for data manipulation and analysis in Python. It excels in tasks such as data cleaning, filtering, transformation, aggregation and merging, making it easier to analyze. Pandas also integrates well with other python libraries and supports various file formats such as CSV, Excel, SQL, JSON, etc. used for data analysis.

## 3b Importing Dataset

![image](https://github.com/user-attachments/assets/ddfdbbc3-db58-4e0d-9d77-96010ecf4d4a)

CODE - “import pandas as pd” 
This code line is used for importing the Pandas library for cleaning and analyzing the data.

CODE – “data = pd.read_csv("C:/Users/NK/Desktop/MBA Sem 2 Minor Project/trip_data.csv")”
This code line is used to assign dataset to ‘data’ variable to quickly mention the dataset when doing further analysis.

CODE – “data.info()”
This code line is used to check the datatypes of columns in the dataset.


![image](https://github.com/user-attachments/assets/c6852a9a-77d6-4607-a135-bbf46f138a06)


CODE – “data.head()”
This code line is used to print the first 5 rows in the dataset.

## 3c Formatting the dataset

![image](https://github.com/user-attachments/assets/dfed8917-8cba-47fa-8504-39c8913396ee)

 
CODE – “timefmt = "%Y-%m-%d %H:%M:%S"”
This line of code is used to specify the time format to be used.
CODE – “data['started_at'] = pd.to_datetime(data['started_at'], format = timefmt, errors='coerce')”
This line is used to change the data type of ‘started_at’ column from object to datatime. As the column contains the date and time for the bike rented at, so we need it to be in datatime datatype for further analysis later.

CODE – “data['ended_at'] = pd.to_datetime(data['ended_at'], format = timefmt, errors='coerce')”
This line is used to change the data type of ‘ended_at’ column from object to datatime. As the column contains the date and time when the was bike returned, so we need it to be in datatime datatype for further analysis later.

CODE – “data['ride_length'] = pd.to_datetime(data['ride_length'], format = "%H:%M:%S", errors='coerce')”
This line is used to change the data type of ‘ride_length’ column from object to datatime. As the column contains the time for how long the bike was rented, so we need it to be in datatime datatype for further analysis later.
CODE – “data.info()”
This line is used to check the data types of the columns, as we changed the datatypes of columns above, we can see them changed in this info result. ‘started_at’, ‘ended_at’, and ‘ride_length’ is changed from object datatype to datetime datatype.

 ![image](https://github.com/user-attachments/assets/07cd37ec-44bf-4a93-a9d3-c13a36951d63)


Checking the first 5 rows of the dataset again, as we can see there is also date shown in ‘ride_length’ column, which we don’t need.
To remove the date from ‘ride_length’ column we used CODE – “data[‘ride_length’] = data[‘ride_length’].dt.time”
We can also see in previous image that days in ‘day_of_week’ column are denoted with numbers. 1 – Monday…. 7 – Sunday.
We will replace numbers with days.
![image](https://github.com/user-attachments/assets/b1f70a64-6b90-459d-a646-0af9d063a412)
 
CODE – “data['day_of_week'] = data['day_of_week'].astype('object')”
This line changes the datatype of the column from integer to object. So we can change the numbers into words.
CODE – “data['day_of_week'].replace(1, 'Monday', inplace=True)
data['day_of_week'].replace(2, 'Tuesday', inplace=True)
data['day_of_week'].replace(3, 'Wednesday', inplace=True)
data['day_of_week'].replace(4, 'Thursday', inplace=True)
data['day_of_week'].replace(5, 'Friday', inplace=True)
data['day_of_week'].replace(6, 'Saturday', inplace=True)
data['day_of_week'].replace(7, 'Sunday', inplace=True)”
These lines change the numbers to days in words, 1 is replaced by ‘Monday’, 2 is replaced by ‘Tuesday’ and so on till Sunday.

## 3d Cleaning the Dataset


![image](https://github.com/user-attachments/assets/26f1d63d-34ec-45ff-8698-1e6ac70dd991)


CODE – “data.shape”
This line is used to check the number of rows and columns in the data. Number of rows in the dataset is 56,67,717 and number of columns in the dataset is 15.

![image](https://github.com/user-attachments/assets/6c48751e-2de6-4581-9ec2-4150bfcec585)


CODE – “data.isnull().sum(axis = 0)”
This line is used to check null values in each column.


![image](https://github.com/user-attachments/assets/3a29e224-06b8-4621-8c37-414596858787)


CODE – “clean_data = data.dropna()”
In this line we have assigned new variable to dataset without null values, as we have used ‘dropna’ function to remove the rows with null values.

![image](https://github.com/user-attachments/assets/b21366a2-19dd-4a51-8f1b-68e320e56c95)


CODE – “col1 = ['start_station_id', 'end_station_id', 'start_lat', 'start_lng', 'end_lat', 'end_lng']”
We have assigned col1 variable to number of columns we don’t need.
CODE – “clean_data.drop(columns=col1, inplace = True)”
We used ‘drop’ function to remove the columns mentioned above.

![image](https://github.com/user-attachments/assets/5166a570-ad5f-4612-8026-3196ad05690f)

 
CODE – “clean_data[clean_data.duplicated(['ride_id'])]”
We used to this line of code to check if there is any duplicate in ‘ride_id’ column. Since there is no duplicate, we don’t have to take any step.


![image](https://github.com/user-attachments/assets/a88fc4c9-85b9-40ca-af2e-57acd3831ac1)


CODE – “clean_data.shape”
This line is used to check number of rows and columns after we have removed rows with null values and removed columns which we didn’t need.
So, after all that we are remained with 43,69,135 rows and 9 columns.

CODE – “clean_data.to_csv(clean_data.csv’, index=False)”
This line used to save the cleaned dataset separately for further analysis.




## 4a Visualizing the Data in Power BI
Power BI is software for data visualization and analytics. It allows user to create interactive and visually appealing charts, graphs and dashboards, and maps without requiring extensive programming skills.
The reason to use Power BI for this project because it doesn’t require much technical knowledge. The charts and graphs in Power BI make it easy to notice pattern, trends. It also integrates well with other software used in this project such as excel and python. 

## 4b Bike Type Preference of Members and Casual Riders

<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/ec9e2826-11b0-42b0-a364-4fc32c96d759" />


Members made up 59.76 % of total trips, whereas casual riders account for 40.24% of total trips. Both member and casual riders prefer classic bikes over electric bikes. 
39.11% of the member rider prefer classic bikes and rest of the 20.66% prefer electric bike. No member rider use docked bike.
As for the casual riders, 20.34% of them prefer classic bikes, 15.90% prefer electric bikes, and rest 4% use docked bikes.





## 4c Month Wise Trips of Member and Casual Riders


<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/512576c9-18f7-49cf-bb5c-ab66c37937a9" />



Both Casual and Member riders prefer to travel the most during the summer season. The number of trips decline as the winter season approaches. This is likely due to the weather conditions during winter season is not suitable to ride bicycle. 
The difference here between casual and member riders is that casual rider’s decline is steeper after the month of July, whereas decline in member rider is after the month of August – September.












## 4d Day wise Trips of Member and Casual Riders

<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/7fab8b2f-0a5a-4c97-bba9-c62c8bfd9d8b" />


 

The above chart shows the trip distribution across the weekdays. Casual riders prefer to travel more during the weekends (Saturday and Sundays), whereas Member riders travel more during the working days of the week. This could mean the member riders use bikes to travel to work, and casual riders use bikes to ride around the area.














## 4e Hour wise Trips of Member and Casual Riders

<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/c25b17db-9ee5-40dd-a461-eb3ece02ed81" />


 

The above line chart shows the trip distribution across the day. Member riders travel during the morning, at around 7-8 AM and at 17 hours (5 PM). Member mostly likely use bikes to travel TO and FRO from their office. While the Casual riders travel during the evening time (5 PM) to ride around the area. 













## 4f Ride Length of Member and Casual Riders


<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/bf5a7d19-c1dd-4c74-bfc2-15f34dc61727" />



This line chart shows the above duration of ride for both member and casual riders. As we can see, member riders most of the travel for about 4 minutes, while the casual members use the bike services for about 7 minutes. Casual riders travel for longer on an average as compared to member riders.




<img width="1399" height="809" alt="image" src="https://github.com/user-attachments/assets/234aa7aa-a5a0-4e8a-b625-70839332a255" />










## Discussion and Conclusion
## 1	Introduction:
This chapter summarizes the findings through the data analysis and provides recommendations to the company for converting casual riders to members. Recommendations includes the marketing strategies the company can plan. The chapter also discusses possible gaps in the data analysis done on the data.

## 2	Findings
•	Casual rider and for less trips as compared to Members  
•	Both Members and Casual riders prefer classic bikes over electric bikes  
•	Only Casual riders use docked bikes  
•	Both Casual and Member riders prefer to travel during the spring and summer, however number of trips for casual riders decline quickly after the month of July, as for the member riders, they travel more till the month of September.  
•	Casual rider prefers to travel during weekends, while members travel more during the working days, this could mean member riders use the bike to travel to work, and casual riders use bikes to ride around the area.  
•	Casual riders travel mostly during evening hours, and as for the member riders, they travel during early morning and during evening hours, that is mostly likely to travel TO and FRO from office.  
•	Casual riders travel for longer duration as compared to member riders.  

## 3	Conclusion
The Analysis done on the customers travelling data, provides insights such as the date and time of the trips, station names, ride length, day of the travel, rider subscription information. Through the analysis we found out the difference between casual riders and members. 
The differences were duration of trips, days of most trips, months of most trips, bike types preferred. Depending on the difference between casual and member riders, we have recommended some marketing strategies the company should formulate to convert casual riders into members. 
Marketing strategies are providing discounts on certain bike types, longer duration of the trips, subscription models for weekends, certain months of the year. This could possibly convert casual riders into members, as there is lot of advantage for them from what we have concluded after the analysis of the provided data.
The differences between Casual riders and members have been analyzed above, considering the differences between the two, the marketing department of the company can formulate marketing strategies to convert casual riders to members, some of the recommendations for the marketing strategies are stated below
The company could offer subscription plans that offer low prices for the electric bikes, so that riders travel more using electric bikes. Offer discounts and carry out marketing campaigns during the summer months, as there are more riders travelling during those months. They could also provide half-yearly memberships to casual riders, from spring to summer months, provide free travels for weekends in the subscription plans, as most of the casual riders travel more on the weekends. 
The company could do marketing campaigns during the evening time, as during those hours there are more riders travelling. they could provide low prices for the long travel. As the casual riders travel for longer duration compared to member riders.
The company could run marketing campaigns on social media for the location near the most active bike renting stations.
