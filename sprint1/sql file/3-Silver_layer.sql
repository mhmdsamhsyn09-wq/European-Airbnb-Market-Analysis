USE AirbnbPrices;
GO
CREATE SCHEMA SILVER;
GO

CREATE TABLE [AirbnbPrices].[SILVER].[silver_listings] (
    listing_id INT IDENTITY(1,1) PRIMARY KEY,
    city NVARCHAR(50) NOT NULL,
    week_time NVARCHAR(20) NOT NULL,
    realSum FLOAT NOT NULL,
    room_type NVARCHAR(50) NOT NULL,
    room_shared BIT NOT NULL,
    room_private BIT NOT NULL,
    person_capacity FLOAT NOT NULL,
    host_is_superhost BIT NOT NULL,
    multi BIT NOT NULL,
    biz BIT NOT NULL,
    cleanliness_rating FLOAT NOT NULL,
    guest_satisfaction_overall FLOAT NOT NULL,
    bedrooms TINYINT NOT NULL,
    dist FLOAT NOT NULL,
    metro_dist FLOAT NOT NULL,
    attr_index FLOAT NOT NULL,
    attr_index_norm FLOAT NOT NULL,
    rest_index FLOAT NOT NULL,
    rest_index_norm FLOAT NOT NULL,
    lng FLOAT NOT NULL,
    lat FLOAT NOT NULL
);
GO
--3
INSERT INTO [AirbnbPrices].[SILVER].[silver_listings] (
    city, week_time, realSum, room_type, room_shared, room_private, 
    person_capacity, host_is_superhost, multi, biz, cleanliness_rating, 
    guest_satisfaction_overall, bedrooms, dist, metro_dist, 
    attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat
)
-- Amsterdam
SELECT 'Amsterdam', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[amsterdam_weekdays]
UNION ALL
SELECT 'Amsterdam', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[amsterdam_weekends]

-- Athens
UNION ALL
SELECT 'Athens', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[athens_weekdays]
UNION ALL
SELECT 'Athens', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[athens_weekends]

-- Barcelona
UNION ALL
SELECT 'Barcelona', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[barcelona_weekdays]
UNION ALL
SELECT 'Barcelona', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[barcelona_weekends]

-- Berlin
UNION ALL
SELECT 'Berlin', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[berlin_weekdays]
UNION ALL
SELECT 'Berlin', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[berlin_weekends]

-- Budapest
UNION ALL
SELECT 'Budapest', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[budapest_weekdays]
UNION ALL
SELECT 'Budapest', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[budapest_weekends]

-- Lisbon
UNION ALL
SELECT 'Lisbon', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[lisbon_weekdays]
UNION ALL
SELECT 'Lisbon', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[lisbon_weekends]

-- London
UNION ALL
SELECT 'London', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[london_weekdays]
UNION ALL
SELECT 'London', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[london_weekends]

-- Paris
UNION ALL
SELECT 'Paris', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[paris_weekdays]
UNION ALL
SELECT 'Paris', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[paris_weekends]

-- Rome
UNION ALL
SELECT 'Rome', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[rome_weekdays]
UNION ALL
SELECT 'Rome', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[rome_weekends]

-- Vienna
UNION ALL
SELECT 'Vienna', 'weekdays', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[vienna_weekdays]
UNION ALL
SELECT 'Vienna', 'weekends', realSum, room_type, room_shared, room_private, person_capacity, host_is_superhost, multi, biz, cleanliness_rating, guest_satisfaction_overall, bedrooms, dist, metro_dist, attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat FROM [AirbnbPrices].[BRONZE].[vienna_weekends];
GO