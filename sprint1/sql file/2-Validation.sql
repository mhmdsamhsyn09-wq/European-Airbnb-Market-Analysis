--==============amsterdam_weekdays===============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[amsterdam_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[amsterdam_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[amsterdam_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[amsterdam_weekdays]
GROUP BY host_is_superhost;

--==================amsterdam_weekends==================
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[amsterdam_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[amsterdam_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[amsterdam_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[amsterdam_weekends]

GROUP BY host_is_superhost;
--=================[athens_weekdays]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[athens_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[athens_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[athens_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[athens_weekdays]

GROUP BY host_is_superhost;

--=================athens_weekends==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[athens_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[athens_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[athens_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[athens_weekends]

GROUP BY host_is_superhost;
--=============barcelona_weekdays===============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[barcelona_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[barcelona_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[barcelona_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[barcelona_weekdays]
GROUP BY host_is_superhost;

--==================[barcelona_weekends]==================
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[barcelona_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[barcelona_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[barcelona_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[barcelona_weekends]

GROUP BY host_is_superhost;
--=================[berlin_weekdays]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[berlin_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[berlin_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[berlin_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[berlin_weekdays]

GROUP BY host_is_superhost;

--=================[berlin_weekends]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[berlin_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[berlin_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[berlin_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[berlin_weekends]

GROUP BY host_is_superhost;
--==============budapest_weekdays===============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[budapest_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[budapest_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[budapest_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[budapest_weekdays]
GROUP BY host_is_superhost;

--==================[budapest_weekends]==================
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[budapest_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[budapest_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[budapest_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[budapest_weekends]

GROUP BY host_is_superhost;
--=================[lisbon_weekdays]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[lisbon_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[lisbon_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[lisbon_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[lisbon_weekdays]

GROUP BY host_is_superhost;

--=================[lisbon_weekends]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[lisbon_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[lisbon_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[lisbon_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[lisbon_weekends]

GROUP BY host_is_superhost;
--==============[london_weekdays]===============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[london_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[london_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[london_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[london_weekdays]
GROUP BY host_is_superhost;

--==================london_weekends==================
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[london_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[london_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[london_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[london_weekends]

GROUP BY host_is_superhost;
--=================[paris_weekdays]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].paris_weekdays; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].paris_weekdays
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].paris_weekdays
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].paris_weekdays

GROUP BY host_is_superhost;

--=================paris_weekends==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].paris_weekends; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].paris_weekends
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].paris_weekends
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].paris_weekends

GROUP BY host_is_superhost;
--==============[rome_weekdays]===============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[rome_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[rome_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[rome_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
FROM [AirBnbPrices].[BRONZE].[rome_weekdays]
GROUP BY host_is_superhost;

--==================[rome_weekends]==================
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[rome_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[rome_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[rome_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[rome_weekends]

GROUP BY host_is_superhost;
--=================[vienna_weekdays]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[vienna_weekdays]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[vienna_weekdays]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[vienna_weekdays]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[vienna_weekdays]

GROUP BY host_is_superhost;

--=================[vienna_weekends]==============
--1
SELECT  
	SUM(CASE WHEN realSum IS NULL OR realSum = '' THEN 1 ELSE 0 END) as realSum,
	SUM(CASE WHEN [room_type]IS NULL OR [room_type] = '' THEN 1 ELSE 0 END) as [room_type],	
	SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]  = '' THEN 1 ELSE 0 END) as [person_capacity],
	SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating] = '' THEN 1 ELSE 0 END) as [cleanliness_rating],
	SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall] = '' THEN 1 ELSE 0 END) as [guest_satisfaction_overall],
	SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]  = '' THEN 1 ELSE 0 END) as [bedrooms],
	SUM(CASE WHEN [metro_dist]IS NULL OR [metro_dist]  = ''THEN 1 ELSE 0 END) as [metro_dist] ,
	SUM(CASE WHEN [attr_index]IS NULL OR [attr_index] = ''THEN 1 ELSE 0 END) as [attr_index],
	SUM(CASE WHEN [attr_index_norm]IS NULL OR [attr_index_norm] = ''THEN 1 ELSE 0 END) as [attr_index_norm],
	SUM(CASE WHEN [rest_index] IS NULL OR [rest_index] = ''THEN 1 ELSE 0 END) as [rest_index] ,
	SUM(CASE WHEN [rest_index_norm]IS NULL OR [rest_index_norm] = ''THEN 1 ELSE 0 END) as [rest_index_norm] ,
	SUM(CASE WHEN [lng] IS NULL OR [lng] = ''THEN 1 ELSE 0 END) as [lng] ,
	SUM(CASE WHEN [lat] IS NULL OR [lat] = ''THEN 1 ELSE 0 END) as [lat]
FROM  [AirbnbPrices].[BRONZE].[vienna_weekends]; 
--2 check roomshared
SELECT room_shared, COUNT(*) as Count_Rows
FROM [AirbnbPrices].[BRONZE].[vienna_weekends]
GROUP BY room_shared;
--3 check room_private

SELECT [room_private], COUNT(*) as Count_Rows
FROM  [AirbnbPrices].[BRONZE].[vienna_weekends]
GROUP BY [room_private];
--4 check host_is_superhost

SELECT host_is_superhost, COUNT(*) as Count_Rows
 FROM  [AirbnbPrices].[BRONZE].[vienna_weekends]

GROUP BY host_is_superhost;