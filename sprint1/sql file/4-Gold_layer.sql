USE AirbnbPrices;
GO

CREATE SCHEMA GOLD;
GO
-- 1. dim_city
CREATE TABLE [AirbnbPrices].[GOLD].[dim_city] (
    city_id INT IDENTITY(1,1) PRIMARY KEY,
    city_name NVARCHAR(50) UNIQUE NOT NULL
);

-- 2. dim_time
CREATE TABLE [AirbnbPrices].[GOLD].[dim_time] (
    time_id INT IDENTITY(1,1) PRIMARY KEY,
    week_time NVARCHAR(20) UNIQUE NOT NULL
);

-- 3. dim_room
CREATE TABLE [AirbnbPrices].[GOLD].[dim_room] (
    room_id INT IDENTITY(1,1) PRIMARY KEY,
    room_type NVARCHAR(50) NOT NULL,
    room_shared BIT NOT NULL,
    room_private BIT NOT NULL
);

-- 4. dim_host
CREATE TABLE [AirbnbPrices].[GOLD].[dim_host] (
    host_id INT IDENTITY(1,1) PRIMARY KEY,
    host_is_superhost BIT NOT NULL,
    multi BIT NOT NULL,
    biz BIT NOT NULL
);
GO
CREATE TABLE [AirbnbPrices].[GOLD].[fact_airbnb_listings] (
    listing_id INT IDENTITY(1,1) PRIMARY KEY,
    city_id INT FOREIGN KEY REFERENCES [GOLD].[dim_city](city_id),
    time_id INT FOREIGN KEY REFERENCES [GOLD].[dim_time](time_id),
    room_id INT FOREIGN KEY REFERENCES [GOLD].[dim_room](room_id),
    host_id INT FOREIGN KEY REFERENCES [GOLD].[dim_host](host_id),
    price FLOAT NOT NULL,
    person_capacity FLOAT NOT NULL,
    bedrooms TINYINT NOT NULL,
    cleanliness_rating FLOAT NOT NULL,
    guest_satisfaction_overall FLOAT NOT NULL,
    distance_to_center FLOAT NOT NULL,
    metro_distance FLOAT NOT NULL,
    attr_index FLOAT,
    attr_index_norm FLOAT,
    rest_index FLOAT,
    rest_index_norm FLOAT,
    lng FLOAT,
    lat FLOAT
);
GO
-- تعبئة المدن
INSERT INTO [GOLD].[dim_city] (city_name)
SELECT DISTINCT city FROM [SILVER].[silver_listings];

-- تعبئة الأوقات
INSERT INTO [GOLD].[dim_time] (week_time)
SELECT DISTINCT week_time FROM [SILVER].[silver_listings];

-- تعبئة الغرف
INSERT INTO [GOLD].[dim_room] (room_type, room_shared, room_private)
SELECT DISTINCT room_type, room_shared, room_private FROM [SILVER].[silver_listings];

-- تعبئة المضيفين
INSERT INTO [GOLD].[dim_host] (host_is_superhost, multi, biz)
SELECT DISTINCT host_is_superhost, multi, biz FROM [SILVER].[silver_listings];

INSERT INTO [GOLD].[fact_airbnb_listings] (
    city_id, time_id, room_id, host_id,
    price, person_capacity, bedrooms, cleanliness_rating,
    guest_satisfaction_overall, distance_to_center, metro_distance,
    attr_index, attr_index_norm, rest_index, rest_index_norm, lng, lat
)
SELECT 
    c.city_id,
    t.time_id,
    r.room_id,
    h.host_id,
    s.realSum,
    s.person_capacity,
    s.bedrooms,
    s.cleanliness_rating,
    s.guest_satisfaction_overall,
    s.dist,
    s.metro_dist,
    s.attr_index,
    s.attr_index_norm,
    s.rest_index,
    s.rest_index_norm,
    s.lng,
    s.lat
FROM [SILVER].[silver_listings] s
JOIN [GOLD].[dim_city] c ON s.city = c.city_name
JOIN [GOLD].[dim_time] t ON s.week_time = t.week_time
JOIN [GOLD].[dim_room] r ON s.room_type = r.room_type AND s.room_shared = r.room_shared AND s.room_private = r.room_private
JOIN [GOLD].[dim_host] h ON s.host_is_superhost = h.host_is_superhost AND s.multi = h.multi AND s.biz = h.biz;
GO