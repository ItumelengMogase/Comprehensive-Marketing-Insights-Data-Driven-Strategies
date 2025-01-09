-- 1. Create a new database for Online Retail Sales Analysis
-- ORSADB: Online Retail Sales Analysis Database
CREATE DATABASE ORSADB;  

-- 2. Switch to the newly created database to ensure all subsequent commands operate on this specific database
USE ORSADB;

-- 3. Create a permanent table for storing detailed retail sales data
-- Defines a comprehensive structure to capture key sales metrics
CREATE TABLE RetailSalesData (
    ProductID INT,  -- Unique identifier for each product
    Category NVARCHAR(50),  -- Product category (e.g., Electronics, Clothing)
    Price DECIMAL(10,2),  -- Product price with two decimal places for financial accuracy
    QuantitySold INT,  -- Number of units sold
    Date DATETIME2,  -- Exact date and time of sale
    CustomerLocation NVARCHAR(50),  -- Geographic location of customer
    MarketingCampaign CHAR(5),  -- Store TRUE or FALSE as 'TRUE' or 'FALSE' in CHAR(5) format
    Revenue DECIMAL(10,2)  -- Total revenue from the sale
);

-- 4. Import Sample Data CSV file into the table

INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Sports', 62.76, 3, 
            '2024-09-30 22:56:15.575537', 'San Diego', 'TRUE', 188.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Clothing', 239.22, 13, 
            '2024-01-18 22:56:15.575537', 'Los Angeles', 'TRUE', 3109.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Home & Kitchen', 305.02, 9, 
            '2024-03-06 22:56:15.575537', 'San Jose', 'TRUE', 2745.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1071, 'Toys', 398.17, 7, 
            '2024-01-30 22:56:15.575537', 'Houston', 'TRUE', 2787.19);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1060, 'Electronics', 57.82, 15, 
            '2024-03-17 22:56:15.575537', 'Philadelphia', 'TRUE', 867.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1020, 'Toys', 426.11, 11, 
            '2023-12-04 22:56:15.575537', 'Los Angeles', 'FALSE', 4687.21);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1082, 'Sports', 374.26, 20, 
            '2024-05-16 22:56:15.575537', 'San Antonio', 'FALSE', 7485.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Toys', 207.22, 2, 
            '2023-12-03 22:56:15.575537', 'Chicago', 'TRUE', 414.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1074, 'Electronics', 466.8, 15, 
            '2024-08-27 22:56:15.575537', 'Chicago', 'TRUE', 7002.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1074, 'Sports', 495.51, 14, 
            '2024-02-02 22:56:15.575537', 'Los Angeles', 'FALSE', 6937.139999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Toys', 106.48, 20, 
            '2024-05-24 22:56:15.575537', 'San Diego', 'TRUE', 2129.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1099, 'Sports', 192.72, 11, 
            '2024-09-25 22:56:15.575537', 'Philadelphia', 'TRUE', 2119.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Clothing', 463.59, 3, 
            '2024-07-03 22:56:15.575537', 'New York', 'TRUE', 1390.77);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Clothing', 362.19, 17, 
            '2024-05-21 22:56:15.575537', 'New York', 'TRUE', 6157.23);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1021, 'Toys', 28.81, 12, 
            '2024-03-06 22:56:15.575537', 'San Antonio', 'TRUE', 345.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Sports', 391.85, 15, 
            '2024-03-09 22:56:15.575537', 'San Diego', 'FALSE', 5877.75);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Electronics', 414.83, 16, 
            '2024-07-10 22:56:15.575537', 'Phoenix', 'TRUE', 6637.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Toys', 376.5, 5, 
            '2024-11-05 22:56:15.575537', 'Phoenix', 'TRUE', 1882.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Clothing', 400.77, 20, 
            '2024-07-07 22:56:15.575537', 'Houston', 'TRUE', 8015.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1037, 'Clothing', 413.44, 6, 
            '2024-05-30 22:56:15.575537', 'Philadelphia', 'FALSE', 2480.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Toys', 97.27, 19, 
            '2024-08-01 22:56:15.575537', 'Philadelphia', 'FALSE', 1848.13);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1063, 'Sports', 121.67, 5, 
            '2024-04-26 22:56:15.575537', 'Chicago', 'FALSE', 608.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Clothing', 318.71, 3, 
            '2023-11-30 22:56:15.575537', 'Dallas', 'FALSE', 956.13);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1020, 'Sports', 454.39, 1, 
            '2024-06-01 22:56:15.575537', 'San Antonio', 'TRUE', 454.39);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Clothing', 161.52, 6, 
            '2024-10-23 22:56:15.575537', 'New York', 'FALSE', 969.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1075, 'Clothing', 296.21, 15, 
            '2024-01-11 22:56:15.575537', 'San Antonio', 'TRUE', 4443.15);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Home & Kitchen', 343.08, 2, 
            '2024-07-17 22:56:15.575537', 'Phoenix', 'TRUE', 686.16);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1021, 'Clothing', 228.71, 3, 
            '2024-01-21 22:56:15.575537', 'Phoenix', 'FALSE', 686.13);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Electronics', 358.32, 17, 
            '2024-05-22 22:56:15.575537', 'Los Angeles', 'FALSE', 6091.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1048, 'Toys', 450.34, 12, 
            '2023-12-14 22:56:15.575537', 'Houston', 'FALSE', 5404.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1090, 'Toys', 313.93, 18, 
            '2024-04-21 22:56:15.575537', 'Philadelphia', 'FALSE', 5650.74);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Sports', 272.19, 15, 
            '2024-08-10 22:56:15.575537', 'San Jose', 'FALSE', 4082.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Clothing', 222.18, 12, 
            '2024-03-14 22:56:15.575537', 'San Antonio', 'TRUE', 2666.16);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Electronics', 290.86, 16, 
            '2024-07-08 22:56:15.575537', 'Phoenix', 'FALSE', 4653.76);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Sports', 180.9, 8, 
            '2024-08-25 22:56:15.575537', 'Dallas', 'FALSE', 1447.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1079, 'Home & Kitchen', 198.78, 14, 
            '2024-10-12 22:56:15.575537', 'Chicago', 'FALSE', 2782.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Sports', 268.27, 17, 
            '2024-02-02 22:56:15.575537', 'New York', 'TRUE', 4560.59);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Sports', 37.98, 8, 
            '2024-04-02 22:56:15.575537', 'Houston', 'FALSE', 303.84);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Clothing', 118.37, 15, 
            '2024-01-03 22:56:15.575537', 'Dallas', 'TRUE', 1775.5500000000002);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1046, 'Home & Kitchen', 273.71, 14, 
            '2024-11-05 22:56:15.575537', 'Houston', 'FALSE', 3831.94);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Sports', 218.61, 18, 
            '2024-10-12 22:56:15.575537', 'Los Angeles', 'FALSE', 3934.980000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Electronics', 169.74, 20, 
            '2024-05-24 22:56:15.575537', 'San Jose', 'TRUE', 3394.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1054, 'Electronics', 366.62, 7, 
            '2024-09-11 22:56:15.575537', 'Phoenix', 'FALSE', 2566.34);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1063, 'Toys', 348.39, 3, 
            '2024-05-17 22:56:15.575537', 'Chicago', 'TRUE', 1045.17);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Home & Kitchen', 87.53, 12, 
            '2024-06-23 22:56:15.575537', 'Dallas', 'TRUE', 1050.36);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Home & Kitchen', 439.92, 3, 
            '2023-12-11 22:56:15.575537', 'Houston', 'TRUE', 1319.76);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1006, 'Toys', 250.23, 20, 
            '2024-08-10 22:56:15.575537', 'Philadelphia', 'FALSE', 5004.599999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1020, 'Sports', 372.02, 14, 
            '2023-12-25 22:56:15.575537', 'Los Angeles', 'FALSE', 5208.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1072, 'Home & Kitchen', 288.71, 15, 
            '2024-09-05 22:56:15.575537', 'Philadelphia', 'FALSE', 4330.65);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1038, 'Electronics', 498.86, 14, 
            '2024-08-20 22:56:15.575537', 'Chicago', 'TRUE', 6984.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1017, 'Electronics', 377.44, 7, 
            '2024-07-24 22:56:15.575537', 'Dallas', 'FALSE', 2642.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1003, 'Clothing', 354.96, 17, 
            '2023-11-22 22:56:15.575537', 'Los Angeles', 'TRUE', 6034.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Home & Kitchen', 390.39, 12, 
            '2024-02-27 22:56:15.575537', 'Dallas', 'FALSE', 4684.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Sports', 75.85, 20, 
            '2024-02-13 22:56:15.575537', 'Phoenix', 'TRUE', 1517.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1013, 'Toys', 106.25, 4, 
            '2024-03-19 22:56:15.575537', 'San Diego', 'TRUE', 425.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Toys', 358.46, 9, 
            '2023-12-10 22:56:15.575537', 'Los Angeles', 'TRUE', 3226.14);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Sports', 249.52, 6, 
            '2024-10-15 22:56:15.575537', 'Philadelphia', 'FALSE', 1497.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Clothing', 378.54, 16, 
            '2024-05-29 22:56:15.575537', 'Chicago', 'TRUE', 6056.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Toys', 55.94, 2, 
            '2024-02-28 22:56:15.575537', 'San Jose', 'TRUE', 111.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1083, 'Home & Kitchen', 270.56, 8, 
            '2024-04-01 22:56:15.575537', 'Phoenix', 'TRUE', 2164.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Clothing', 192.52, 11, 
            '2024-04-20 22:56:15.575537', 'San Diego', 'TRUE', 2117.7200000000003);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Home & Kitchen', 231.22, 13, 
            '2024-06-15 22:56:15.575537', 'San Jose', 'TRUE', 3005.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1070, 'Electronics', 303.96, 17, 
            '2024-05-15 22:56:15.575537', 'New York', 'TRUE', 5167.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Clothing', 253.63, 8, 
            '2024-10-09 22:56:15.575537', 'Phoenix', 'FALSE', 2029.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Toys', 272.23, 18, 
            '2024-05-08 22:56:15.575537', 'Chicago', 'FALSE', 4900.14);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1046, 'Clothing', 245.75, 18, 
            '2024-11-05 22:56:15.575537', 'Houston', 'TRUE', 4423.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Clothing', 207.43, 14, 
            '2024-09-14 22:56:15.575537', 'Los Angeles', 'FALSE', 2904.02);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1077, 'Clothing', 387.08, 15, 
            '2024-01-24 22:56:15.575537', 'Dallas', 'FALSE', 5806.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1080, 'Clothing', 11.04, 6, 
            '2024-10-13 22:56:15.575537', 'Chicago', 'TRUE', 66.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1035, 'Home & Kitchen', 301.23, 11, 
            '2023-12-21 22:56:15.575537', 'Los Angeles', 'TRUE', 3313.53);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1049, 'Electronics', 284.93, 13, 
            '2024-09-02 22:56:15.575537', 'San Jose', 'TRUE', 3704.09);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1003, 'Sports', 359.51, 1, 
            '2024-03-26 22:56:15.575537', 'Dallas', 'FALSE', 359.51);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Clothing', 301.52, 6, 
            '2024-09-24 22:56:15.575537', 'San Antonio', 'TRUE', 1809.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1005, 'Toys', 414.27, 9, 
            '2024-09-20 22:56:15.575537', 'Philadelphia', 'FALSE', 3728.43);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Clothing', 479.74, 8, 
            '2024-08-29 22:56:15.575537', 'New York', 'TRUE', 3837.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1003, 'Toys', 174.55, 11, 
            '2024-08-23 22:56:15.575537', 'Phoenix', 'FALSE', 1920.05);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Home & Kitchen', 117.54, 19, 
            '2024-02-28 22:56:15.575537', 'Chicago', 'TRUE', 2233.26);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Toys', 214.68, 9, 
            '2023-12-08 22:56:15.575537', 'New York', 'TRUE', 1932.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Sports', 147.53, 17, 
            '2024-04-04 22:56:15.575537', 'Houston', 'FALSE', 2508.01);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1017, 'Electronics', 309.4, 12, 
            '2024-01-11 22:56:15.575537', 'Los Angeles', 'FALSE', 3712.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Toys', 456.37, 14, 
            '2024-07-19 22:56:15.575537', 'Los Angeles', 'FALSE', 6389.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Toys', 73.86, 15, 
            '2024-03-14 22:56:15.575537', 'Chicago', 'FALSE', 1107.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1033, 'Electronics', 54.89, 16, 
            '2024-10-30 22:56:15.575537', 'San Diego', 'FALSE', 878.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1073, 'Sports', 131.73, 20, 
            '2024-06-29 22:56:15.575537', 'San Diego', 'FALSE', 2634.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Clothing', 364.42, 1, 
            '2024-09-04 22:56:15.575537', 'San Antonio', 'TRUE', 364.42);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1099, 'Toys', 298.52, 10, 
            '2023-12-27 22:56:15.575537', 'Philadelphia', 'FALSE', 2985.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1013, 'Electronics', 55.6, 8, 
            '2024-09-18 22:56:15.575537', 'Dallas', 'TRUE', 444.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1094, 'Home & Kitchen', 459.78, 18, 
            '2024-10-10 22:56:15.575537', 'Houston', 'TRUE', 8276.039999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Electronics', 396.09, 1, 
            '2024-05-04 22:56:15.575537', 'New York', 'FALSE', 396.09);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Home & Kitchen', 16.4, 2, 
            '2024-06-17 22:56:15.575537', 'San Diego', 'TRUE', 32.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1071, 'Sports', 327.43, 1, 
            '2024-08-14 22:56:15.575537', 'San Antonio', 'FALSE', 327.43);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1077, 'Clothing', 386.77, 1, 
            '2024-01-11 22:56:15.575537', 'San Antonio', 'FALSE', 386.77);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Electronics', 190.35, 9, 
            '2024-05-10 22:56:15.575537', 'Chicago', 'TRUE', 1713.15);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Toys', 39.12, 13, 
            '2024-04-02 22:56:15.575537', 'Houston', 'TRUE', 508.56);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1039, 'Sports', 43.27, 1, 
            '2024-01-01 22:56:15.575537', 'San Jose', 'FALSE', 43.27);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1084, 'Electronics', 56.6, 13, 
            '2024-03-22 22:56:15.575537', 'Dallas', 'FALSE', 735.8000000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1079, 'Toys', 421.02, 20, 
            '2023-12-03 22:56:15.575537', 'Philadelphia', 'TRUE', 8420.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1081, 'Electronics', 455.79, 7, 
            '2023-11-18 22:56:15.575537', 'Phoenix', 'TRUE', 3190.53);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Home & Kitchen', 65.79, 2, 
            '2023-12-28 22:56:15.575537', 'Chicago', 'TRUE', 131.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Electronics', 121.77, 6, 
            '2024-10-25 22:56:15.575537', 'Dallas', 'TRUE', 730.62);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1025, 'Electronics', 86.93, 7, 
            '2024-05-27 22:56:15.575537', 'Phoenix', 'FALSE', 608.51);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Electronics', 97.23, 14, 
            '2024-10-26 22:56:15.575537', 'Phoenix', 'FALSE', 1361.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Sports', 419.56, 18, 
            '2024-04-14 22:56:15.575537', 'Houston', 'FALSE', 7552.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1040, 'Electronics', 169.41, 15, 
            '2024-03-01 22:56:15.575537', 'Houston', 'FALSE', 2541.15);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1028, 'Toys', 159.16, 2, 
            '2024-05-11 22:56:15.575537', 'New York', 'TRUE', 318.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Home & Kitchen', 117.56, 10, 
            '2024-04-17 22:56:15.575537', 'San Antonio', 'TRUE', 1175.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1044, 'Home & Kitchen', 305.91, 12, 
            '2023-12-17 22:56:15.575537', 'Dallas', 'FALSE', 3670.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1064, 'Electronics', 192.76, 17, 
            '2024-06-29 22:56:15.575537', 'Chicago', 'FALSE', 3276.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Sports', 373.4, 8, 
            '2024-01-26 22:56:15.575537', 'Los Angeles', 'FALSE', 2987.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1070, 'Sports', 106.76, 11, 
            '2024-06-22 22:56:15.575537', 'Chicago', 'FALSE', 1174.36);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Toys', 394.96, 3, 
            '2024-07-03 22:56:15.575537', 'New York', 'FALSE', 1184.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Electronics', 303.84, 6, 
            '2024-01-03 22:56:15.575537', 'Philadelphia', 'FALSE', 1823.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Home & Kitchen', 61.56, 9, 
            '2023-12-01 22:56:15.575537', 'San Antonio', 'FALSE', 554.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Sports', 210.18, 6, 
            '2024-08-19 22:56:15.575537', 'Los Angeles', 'FALSE', 1261.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Electronics', 432.44, 9, 
            '2024-04-24 22:56:15.575537', 'San Diego', 'FALSE', 3891.96);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Sports', 461.87, 7, 
            '2023-11-30 22:56:15.575537', 'Philadelphia', 'TRUE', 3233.09);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1010, 'Sports', 235.52, 9, 
            '2024-11-06 22:56:15.575537', 'Houston', 'FALSE', 2119.6800000000003);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1080, 'Home & Kitchen', 243.01, 18, 
            '2023-11-30 22:56:15.575537', 'Phoenix', 'TRUE', 4374.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Clothing', 459.64, 12, 
            '2024-07-19 22:56:15.575537', 'San Diego', 'TRUE', 5515.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Toys', 295.6, 8, 
            '2024-11-02 22:56:15.575537', 'Chicago', 'FALSE', 2364.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Toys', 21.26, 8, 
            '2024-02-04 22:56:15.575537', 'Chicago', 'FALSE', 170.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Home & Kitchen', 456.81, 18, 
            '2023-12-30 22:56:15.575537', 'Houston', 'TRUE', 8222.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1004, 'Sports', 127.87, 20, 
            '2023-12-23 22:56:15.575537', 'New York', 'TRUE', 2557.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1040, 'Electronics', 290.93, 15, 
            '2024-02-27 22:56:15.575537', 'Dallas', 'FALSE', 4363.95);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1027, 'Sports', 86.93, 7, 
            '2023-12-15 22:56:15.575537', 'San Diego', 'TRUE', 608.51);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1006, 'Home & Kitchen', 21.77, 11, 
            '2024-07-18 22:56:15.575537', 'San Diego', 'FALSE', 239.47);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1072, 'Toys', 159.18, 20, 
            '2023-12-01 22:56:15.575537', 'San Jose', 'FALSE', 3183.6000000000004);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1071, 'Sports', 391.35, 16, 
            '2024-05-12 22:56:15.575537', 'Philadelphia', 'FALSE', 6261.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1011, 'Toys', 142.41, 4, 
            '2024-11-06 22:56:15.575537', 'San Antonio', 'TRUE', 569.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1033, 'Electronics', 113.95, 6, 
            '2024-09-01 22:56:15.575537', 'Philadelphia', 'TRUE', 683.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Toys', 110.28, 3, 
            '2024-06-20 22:56:15.575537', 'Dallas', 'FALSE', 330.84000000000003);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Toys', 260.01, 9, 
            '2024-02-28 22:56:15.575537', 'Chicago', 'TRUE', 2340.09);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1022, 'Clothing', 487.89, 10, 
            '2024-06-23 22:56:15.575537', 'Chicago', 'TRUE', 4878.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Clothing', 232.2, 14, 
            '2024-05-19 22:56:15.575537', 'Chicago', 'TRUE', 3250.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Clothing', 280.87, 11, 
            '2024-04-12 22:56:15.575537', 'San Jose', 'TRUE', 3089.57);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1036, 'Toys', 431.01, 18, 
            '2023-12-26 22:56:15.575537', 'Chicago', 'TRUE', 7758.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Home & Kitchen', 269.86, 12, 
            '2024-09-27 22:56:15.575537', 'Dallas', 'TRUE', 3238.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Toys', 96.31, 12, 
            '2024-04-21 22:56:15.575537', 'Houston', 'TRUE', 1155.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Home & Kitchen', 153.3, 13, 
            '2024-01-19 22:56:15.575537', 'San Antonio', 'FALSE', 1992.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1090, 'Home & Kitchen', 158.42, 13, 
            '2024-03-22 22:56:15.575537', 'Dallas', 'TRUE', 2059.46);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Clothing', 201.67, 19, 
            '2024-04-08 22:56:15.575537', 'San Antonio', 'TRUE', 3831.73);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1064, 'Sports', 216.26, 19, 
            '2024-09-06 22:56:15.575537', 'Dallas', 'TRUE', 4108.94);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Electronics', 400.89, 14, 
            '2024-08-02 22:56:15.575537', 'Chicago', 'TRUE', 5612.46);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1046, 'Clothing', 177.95, 4, 
            '2024-08-15 22:56:15.575537', 'Houston', 'TRUE', 711.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1077, 'Clothing', 236.77, 13, 
            '2023-11-13 22:56:15.575537', 'San Diego', 'TRUE', 3078.01);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Sports', 314.36, 8, 
            '2024-04-08 22:56:15.575537', 'Philadelphia', 'TRUE', 2514.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Electronics', 191.97, 19, 
            '2024-05-02 22:56:15.575537', 'Phoenix', 'TRUE', 3647.43);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1004, 'Toys', 419.1, 12, 
            '2023-11-16 22:56:15.575537', 'Houston', 'FALSE', 5029.200000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Toys', 295.79, 18, 
            '2024-02-11 22:56:15.575537', 'San Diego', 'TRUE', 5324.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1013, 'Clothing', 150.55, 6, 
            '2024-08-12 22:56:15.575537', 'New York', 'TRUE', 903.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Electronics', 358.46, 18, 
            '2023-12-29 22:56:15.575537', 'Dallas', 'TRUE', 6452.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Clothing', 266.19, 19, 
            '2024-05-22 22:56:15.575537', 'New York', 'TRUE', 5057.61);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1078, 'Home & Kitchen', 269.56, 5, 
            '2024-01-26 22:56:15.575537', 'San Diego', 'FALSE', 1347.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Clothing', 243.14, 9, 
            '2023-11-13 22:56:15.575537', 'Houston', 'FALSE', 2188.26);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Clothing', 251.02, 3, 
            '2024-02-05 22:56:15.575537', 'Dallas', 'FALSE', 753.0600000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Toys', 383.85, 10, 
            '2024-10-30 22:56:15.575537', 'Phoenix', 'FALSE', 3838.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1076, 'Toys', 55.98, 19, 
            '2024-08-27 22:56:15.575537', 'Chicago', 'FALSE', 1063.62);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Toys', 170.51, 3, 
            '2024-10-24 22:56:15.575537', 'Dallas', 'FALSE', 511.53);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Home & Kitchen', 42.37, 15, 
            '2024-05-05 22:56:15.575537', 'Dallas', 'FALSE', 635.55);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Toys', 377.86, 1, 
            '2023-12-19 22:56:15.575537', 'Houston', 'FALSE', 377.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Electronics', 139.79, 7, 
            '2024-05-27 22:56:15.575537', 'Houston', 'FALSE', 978.53);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Sports', 449.23, 12, 
            '2024-04-22 22:56:15.575537', 'San Diego', 'FALSE', 5390.76);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1003, 'Electronics', 265.66, 17, 
            '2024-09-12 22:56:15.575537', 'Los Angeles', 'FALSE', 4516.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1093, 'Electronics', 401.37, 20, 
            '2023-12-14 22:56:15.575537', 'Dallas', 'FALSE', 8027.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1022, 'Toys', 489.57, 5, 
            '2024-05-05 22:56:15.575537', 'Philadelphia', 'FALSE', 2447.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Sports', 420.7, 4, 
            '2024-01-02 22:56:15.575537', 'Dallas', 'FALSE', 1682.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1042, 'Sports', 434.16, 12, 
            '2024-03-06 22:56:15.575537', 'San Diego', 'FALSE', 5209.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1028, 'Sports', 206.95, 20, 
            '2024-08-04 22:56:15.575537', 'San Antonio', 'FALSE', 4139.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1035, 'Home & Kitchen', 278.1, 18, 
            '2024-04-30 22:56:15.575537', 'New York', 'TRUE', 5005.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1012, 'Toys', 130.67, 17, 
            '2024-03-25 22:56:15.575537', 'Chicago', 'FALSE', 2221.39);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Sports', 102.08, 19, 
            '2024-03-31 22:56:15.575537', 'Los Angeles', 'TRUE', 1939.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1070, 'Home & Kitchen', 255.23, 9, 
            '2024-04-24 22:56:15.575537', 'Phoenix', 'FALSE', 2297.07);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Clothing', 299.55, 4, 
            '2024-08-21 22:56:15.575537', 'Phoenix', 'FALSE', 1198.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Clothing', 172.94, 2, 
            '2024-09-29 22:56:15.575537', 'Phoenix', 'TRUE', 345.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1027, 'Home & Kitchen', 286.87, 4, 
            '2024-10-22 22:56:15.575537', 'Houston', 'FALSE', 1147.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1065, 'Home & Kitchen', 444.29, 2, 
            '2024-08-22 22:56:15.575537', 'Phoenix', 'TRUE', 888.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Toys', 280.58, 15, 
            '2024-03-03 22:56:15.575537', 'Chicago', 'TRUE', 4208.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1044, 'Toys', 361.8, 2, 
            '2024-07-17 22:56:15.575537', 'New York', 'TRUE', 723.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Clothing', 403.63, 4, 
            '2024-04-16 22:56:15.575537', 'Phoenix', 'FALSE', 1614.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1056, 'Sports', 494.42, 6, 
            '2024-02-09 22:56:15.575537', 'Dallas', 'FALSE', 2966.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1005, 'Clothing', 303.58, 7, 
            '2024-09-10 22:56:15.575537', 'Dallas', 'FALSE', 2125.06);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1027, 'Sports', 404.39, 10, 
            '2023-11-23 22:56:15.575537', 'Houston', 'TRUE', 4043.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1027, 'Sports', 481.51, 19, 
            '2024-10-03 22:56:15.575537', 'Chicago', 'TRUE', 9148.69);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Toys', 472.48, 19, 
            '2024-04-25 22:56:15.575537', 'New York', 'FALSE', 8977.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1083, 'Electronics', 74.84, 12, 
            '2024-06-28 22:56:15.575537', 'Los Angeles', 'FALSE', 898.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Electronics', 206.16, 3, 
            '2024-07-06 22:56:15.575537', 'San Diego', 'FALSE', 618.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Home & Kitchen', 165.38, 13, 
            '2024-09-30 22:56:15.575537', 'New York', 'FALSE', 2149.94);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1074, 'Toys', 48.03, 18, 
            '2024-06-28 22:56:15.575537', 'San Diego', 'FALSE', 864.54);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Sports', 318.45, 8, 
            '2024-06-20 22:56:15.575537', 'San Antonio', 'TRUE', 2547.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Electronics', 369.27, 15, 
            '2023-12-03 22:56:15.575537', 'San Diego', 'TRUE', 5539.049999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Sports', 424.82, 1, 
            '2024-05-16 22:56:15.575537', 'Philadelphia', 'TRUE', 424.82);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Electronics', 65.77, 3, 
            '2024-01-02 22:56:15.575537', 'Dallas', 'FALSE', 197.31);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Electronics', 438.84, 8, 
            '2024-08-04 22:56:15.575537', 'Chicago', 'TRUE', 3510.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Electronics', 323.25, 4, 
            '2024-05-13 22:56:15.575537', 'San Jose', 'TRUE', 1293.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Toys', 353.45, 16, 
            '2024-07-14 22:56:15.575537', 'Houston', 'TRUE', 5655.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1076, 'Clothing', 455.76, 10, 
            '2023-11-24 22:56:15.575537', 'Philadelphia', 'TRUE', 4557.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Sports', 314.26, 12, 
            '2023-12-09 22:56:15.575537', 'San Diego', 'TRUE', 3771.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1069, 'Toys', 171.25, 14, 
            '2024-07-27 22:56:15.575537', 'Phoenix', 'FALSE', 2397.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1071, 'Toys', 413.43, 14, 
            '2023-12-05 22:56:15.575537', 'Chicago', 'TRUE', 5788.02);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Toys', 184.71, 2, 
            '2023-12-05 22:56:15.575537', 'Philadelphia', 'FALSE', 369.42);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Toys', 21.94, 5, 
            '2023-11-13 22:56:15.575537', 'Houston', 'FALSE', 109.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Toys', 416.17, 5, 
            '2024-10-23 22:56:15.575537', 'Dallas', 'FALSE', 2080.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1036, 'Home & Kitchen', 175.87, 6, 
            '2024-08-04 22:56:15.575537', 'Chicago', 'FALSE', 1055.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Sports', 388.05, 13, 
            '2024-03-16 22:56:15.575537', 'Houston', 'FALSE', 5044.650000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Toys', 184.57, 9, 
            '2024-02-25 22:56:15.575537', 'San Antonio', 'TRUE', 1661.13);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Sports', 431.23, 15, 
            '2024-03-15 22:56:15.575537', 'San Antonio', 'TRUE', 6468.450000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Home & Kitchen', 113.66, 14, 
            '2024-08-17 22:56:15.575537', 'Houston', 'FALSE', 1591.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1078, 'Home & Kitchen', 487.4, 7, 
            '2024-07-07 22:56:15.575537', 'Philadelphia', 'FALSE', 3411.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Sports', 390.98, 20, 
            '2024-01-15 22:56:15.575537', 'Chicago', 'FALSE', 7819.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Electronics', 61.55, 2, 
            '2024-01-11 22:56:15.575537', 'Philadelphia', 'TRUE', 123.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Clothing', 285.06, 7, 
            '2023-12-14 22:56:15.575537', 'Los Angeles', 'FALSE', 1995.42);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1087, 'Electronics', 492.76, 6, 
            '2024-07-07 22:56:15.575537', 'San Diego', 'TRUE', 2956.56);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Electronics', 238.18, 17, 
            '2024-08-13 22:56:15.575537', 'Los Angeles', 'FALSE', 4049.06);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Electronics', 95.14, 2, 
            '2024-02-13 22:56:15.575537', 'San Antonio', 'TRUE', 190.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Toys', 244.97, 3, 
            '2023-11-16 22:56:15.575537', 'Dallas', 'FALSE', 734.91);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Home & Kitchen', 258.67, 5, 
            '2023-12-08 22:56:15.575537', 'New York', 'TRUE', 1293.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1011, 'Electronics', 372.14, 5, 
            '2024-10-27 22:56:15.575537', 'San Diego', 'FALSE', 1860.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1038, 'Home & Kitchen', 350.93, 1, 
            '2024-02-24 22:56:15.575537', 'San Antonio', 'TRUE', 350.93);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Sports', 204.26, 8, 
            '2024-08-15 22:56:15.575537', 'Philadelphia', 'TRUE', 1634.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Clothing', 112.92, 12, 
            '2024-06-24 22:56:15.575537', 'Philadelphia', 'TRUE', 1355.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1055, 'Sports', 324.3, 4, 
            '2024-03-27 22:56:15.575537', 'Philadelphia', 'TRUE', 1297.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1080, 'Sports', 213.74, 13, 
            '2024-01-23 22:56:15.575537', 'Dallas', 'TRUE', 2778.62);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Toys', 70.48, 15, 
            '2023-12-23 22:56:15.575537', 'Los Angeles', 'TRUE', 1057.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Clothing', 450.78, 11, 
            '2024-06-20 22:56:15.575537', 'New York', 'TRUE', 4958.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Sports', 347.15, 10, 
            '2024-08-17 22:56:15.575537', 'Philadelphia', 'FALSE', 3471.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Sports', 343.18, 3, 
            '2024-07-01 22:56:15.575537', 'San Jose', 'FALSE', 1029.54);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Clothing', 412.18, 14, 
            '2024-05-20 22:56:15.575537', 'San Diego', 'FALSE', 5770.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Clothing', 267.18, 16, 
            '2023-11-24 22:56:15.575537', 'Chicago', 'FALSE', 4274.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Sports', 408.45, 10, 
            '2024-10-27 22:56:15.575537', 'San Jose', 'FALSE', 4084.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Clothing', 251.55, 10, 
            '2024-08-26 22:56:15.575537', 'New York', 'TRUE', 2515.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Sports', 38.25, 12, 
            '2024-02-23 22:56:15.575537', 'Dallas', 'TRUE', 459.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Sports', 205.6, 9, 
            '2024-10-31 22:56:15.575537', 'New York', 'TRUE', 1850.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Toys', 251.25, 1, 
            '2024-06-15 22:56:15.575537', 'Chicago', 'TRUE', 251.25);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Electronics', 361.5, 5, 
            '2024-06-08 22:56:15.575537', 'San Diego', 'TRUE', 1807.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Sports', 57.76, 20, 
            '2024-08-08 22:56:15.575537', 'Chicago', 'FALSE', 1155.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Home & Kitchen', 74.31, 8, 
            '2024-08-31 22:56:15.575537', 'Houston', 'FALSE', 594.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Electronics', 135.52, 11, 
            '2024-07-05 22:56:15.575537', 'San Diego', 'FALSE', 1490.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1069, 'Electronics', 136.92, 12, 
            '2023-12-25 22:56:15.575537', 'New York', 'FALSE', 1643.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Electronics', 367.43, 1, 
            '2024-03-11 22:56:15.575537', 'Philadelphia', 'TRUE', 367.43);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1067, 'Toys', 129.11, 20, 
            '2024-10-12 22:56:15.575537', 'New York', 'TRUE', 2582.2000000000003);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1054, 'Sports', 318.38, 11, 
            '2024-01-29 22:56:15.575537', 'New York', 'TRUE', 3502.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1074, 'Toys', 249.67, 5, 
            '2024-03-23 22:56:15.575537', 'San Diego', 'FALSE', 1248.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1055, 'Sports', 288.78, 15, 
            '2024-04-14 22:56:15.575537', 'Houston', 'TRUE', 4331.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1016, 'Toys', 419.86, 5, 
            '2024-04-17 22:56:15.575537', 'New York', 'FALSE', 2099.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1037, 'Toys', 205.17, 12, 
            '2024-06-19 22:56:15.575537', 'San Jose', 'TRUE', 2462.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Home & Kitchen', 386.6, 5, 
            '2024-10-18 22:56:15.575537', 'San Antonio', 'TRUE', 1933.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1068, 'Toys', 213.91, 17, 
            '2024-02-04 22:56:15.575537', 'Phoenix', 'FALSE', 3636.47);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1097, 'Clothing', 180.17, 17, 
            '2023-12-23 22:56:15.575537', 'Phoenix', 'TRUE', 3062.89);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1069, 'Home & Kitchen', 479.52, 12, 
            '2024-01-20 22:56:15.575537', 'New York', 'TRUE', 5754.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Toys', 96.26, 15, 
            '2024-09-27 22:56:15.575537', 'San Jose', 'FALSE', 1443.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1010, 'Electronics', 49.72, 15, 
            '2024-07-01 22:56:15.575537', 'Philadelphia', 'TRUE', 745.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1015, 'Clothing', 386.64, 6, 
            '2024-02-21 22:56:15.575537', 'Dallas', 'FALSE', 2319.84);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Clothing', 38.78, 12, 
            '2024-09-01 22:56:15.575537', 'Dallas', 'TRUE', 465.36);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1072, 'Clothing', 419.35, 20, 
            '2024-09-18 22:56:15.575537', 'San Diego', 'TRUE', 8387.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Home & Kitchen', 221.41, 18, 
            '2024-09-12 22:56:15.575537', 'Phoenix', 'TRUE', 3985.38);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1069, 'Toys', 458.18, 14, 
            '2024-10-09 22:56:15.575537', 'New York', 'TRUE', 6414.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1079, 'Toys', 362.16, 2, 
            '2024-02-09 22:56:15.575537', 'Dallas', 'TRUE', 724.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Electronics', 307.15, 9, 
            '2024-08-10 22:56:15.575537', 'New York', 'TRUE', 2764.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Electronics', 474.91, 5, 
            '2024-04-25 22:56:15.575537', 'San Diego', 'TRUE', 2374.55);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1019, 'Clothing', 201.34, 20, 
            '2024-09-11 22:56:15.575537', 'Phoenix', 'TRUE', 4026.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Electronics', 477.27, 1, 
            '2024-07-31 22:56:15.575537', 'Chicago', 'FALSE', 477.27);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1035, 'Home & Kitchen', 71.83, 3, 
            '2024-08-18 22:56:15.575537', 'San Antonio', 'FALSE', 215.49);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Toys', 244.46, 6, 
            '2024-07-05 22:56:15.575537', 'San Antonio', 'TRUE', 1466.76);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Clothing', 138.61, 5, 
            '2024-01-12 22:56:15.575537', 'Dallas', 'TRUE', 693.0500000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1066, 'Electronics', 272.22, 5, 
            '2024-05-25 22:56:15.575537', 'San Antonio', 'FALSE', 1361.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Home & Kitchen', 85.2, 1, 
            '2024-11-02 22:56:15.575537', 'Chicago', 'TRUE', 85.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1019, 'Home & Kitchen', 421.56, 17, 
            '2024-10-16 22:56:15.575537', 'New York', 'TRUE', 7166.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Electronics', 423.97, 19, 
            '2023-11-24 22:56:15.575537', 'San Diego', 'FALSE', 8055.43);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1070, 'Toys', 477.84, 14, 
            '2024-01-08 22:56:15.575537', 'Chicago', 'TRUE', 6689.759999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Electronics', 81.56, 12, 
            '2023-12-27 22:56:15.575537', 'San Diego', 'TRUE', 978.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Clothing', 313.55, 10, 
            '2024-07-30 22:56:15.575537', 'San Diego', 'FALSE', 3135.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1039, 'Electronics', 239.75, 20, 
            '2024-09-02 22:56:15.575537', 'Phoenix', 'TRUE', 4795.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1038, 'Home & Kitchen', 175.47, 18, 
            '2024-01-25 22:56:15.575537', 'New York', 'TRUE', 3158.46);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1081, 'Electronics', 179.01, 11, 
            '2024-05-11 22:56:15.575537', 'San Jose', 'FALSE', 1969.11);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Toys', 209.33, 2, 
            '2024-09-10 22:56:15.575537', 'San Antonio', 'TRUE', 418.66);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1010, 'Sports', 353.94, 18, 
            '2024-08-02 22:56:15.575537', 'San Jose', 'FALSE', 6370.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Electronics', 301.15, 7, 
            '2024-05-24 22:56:15.575537', 'Phoenix', 'TRUE', 2108.05);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1056, 'Toys', 232.54, 15, 
            '2024-06-11 22:56:15.575537', 'San Diego', 'TRUE', 3488.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Toys', 42.59, 11, 
            '2024-05-12 22:56:15.575537', 'Dallas', 'FALSE', 468.49);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1049, 'Home & Kitchen', 43.49, 18, 
            '2024-02-25 22:56:15.575537', 'San Antonio', 'FALSE', 782.82);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1022, 'Toys', 6.16, 12, 
            '2024-06-02 22:56:15.575537', 'San Antonio', 'TRUE', 73.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1030, 'Toys', 484.01, 6, 
            '2024-07-17 22:56:15.575537', 'New York', 'FALSE', 2904.06);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1093, 'Toys', 7.6, 20, 
            '2024-09-22 22:56:15.575537', 'Houston', 'FALSE', 152.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Toys', 56.03, 13, 
            '2024-06-28 22:56:15.575537', 'Los Angeles', 'TRUE', 728.39);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Clothing', 160.73, 20, 
            '2024-08-12 22:56:15.575537', 'Los Angeles', 'TRUE', 3214.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1006, 'Clothing', 404.68, 16, 
            '2024-01-06 22:56:15.575537', 'Los Angeles', 'TRUE', 6474.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1015, 'Home & Kitchen', 481.24, 18, 
            '2024-04-25 22:56:15.575537', 'Houston', 'FALSE', 8662.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Electronics', 396.06, 10, 
            '2023-11-12 22:56:15.575537', 'New York', 'FALSE', 3960.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Toys', 346.83, 8, 
            '2024-02-07 22:56:15.575537', 'Houston', 'FALSE', 2774.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Electronics', 263.04, 18, 
            '2024-07-31 22:56:15.575537', 'Los Angeles', 'FALSE', 4734.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Electronics', 47.92, 1, 
            '2024-11-05 22:56:15.575537', 'Phoenix', 'TRUE', 47.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Home & Kitchen', 479.29, 8, 
            '2023-12-15 22:56:15.575537', 'Chicago', 'FALSE', 3834.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1011, 'Toys', 380.4, 6, 
            '2024-04-03 22:56:15.575537', 'San Diego', 'TRUE', 2282.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1068, 'Toys', 321.28, 5, 
            '2024-08-27 22:56:15.575537', 'Houston', 'FALSE', 1606.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1036, 'Sports', 380.72, 15, 
            '2024-01-22 22:56:15.575537', 'New York', 'TRUE', 5710.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Electronics', 363.43, 15, 
            '2024-05-29 22:56:15.575537', 'New York', 'TRUE', 5451.45);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Electronics', 320.43, 2, 
            '2024-08-02 22:56:15.575537', 'San Jose', 'TRUE', 640.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Clothing', 490.39, 1, 
            '2024-06-20 22:56:15.575537', 'Chicago', 'FALSE', 490.39);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Sports', 452.17, 11, 
            '2024-01-16 22:56:15.575537', 'Dallas', 'TRUE', 4973.87);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Clothing', 325.1, 10, 
            '2024-03-17 22:56:15.575537', 'San Antonio', 'TRUE', 3251.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1079, 'Clothing', 348.12, 18, 
            '2024-08-21 22:56:15.575537', 'Los Angeles', 'FALSE', 6266.16);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1002, 'Clothing', 30.54, 18, 
            '2024-05-29 22:56:15.575537', 'Dallas', 'TRUE', 549.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1019, 'Home & Kitchen', 336.61, 17, 
            '2023-11-10 22:56:15.575537', 'San Jose', 'FALSE', 5722.37);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Home & Kitchen', 26.86, 8, 
            '2024-08-12 22:56:15.575537', 'Los Angeles', 'FALSE', 214.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Clothing', 296.19, 15, 
            '2023-11-21 22:56:15.575537', 'Chicago', 'TRUE', 4442.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Sports', 499.68, 8, 
            '2024-08-07 22:56:15.575537', 'San Jose', 'TRUE', 3997.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Electronics', 280.12, 17, 
            '2024-01-21 22:56:15.575537', 'Los Angeles', 'FALSE', 4762.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1074, 'Sports', 239.24, 12, 
            '2024-10-23 22:56:15.575537', 'Chicago', 'TRUE', 2870.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1071, 'Toys', 159.86, 8, 
            '2024-03-22 22:56:15.575537', 'Philadelphia', 'FALSE', 1278.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1035, 'Home & Kitchen', 64.66, 14, 
            '2024-03-07 22:56:15.575537', 'Dallas', 'FALSE', 905.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1037, 'Electronics', 366.86, 4, 
            '2024-01-02 22:56:15.575537', 'Dallas', 'FALSE', 1467.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1083, 'Electronics', 100.34, 1, 
            '2024-02-28 22:56:15.575537', 'San Antonio', 'TRUE', 100.34);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Toys', 62.06, 1, 
            '2024-09-23 22:56:15.575537', 'Chicago', 'FALSE', 62.06);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Toys', 213.77, 19, 
            '2024-11-06 22:56:15.575537', 'Houston', 'TRUE', 4061.63);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Clothing', 398.69, 16, 
            '2024-03-22 22:56:15.575537', 'Philadelphia', 'TRUE', 6379.04);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1024, 'Home & Kitchen', 373.81, 14, 
            '2024-04-20 22:56:15.575537', 'Phoenix', 'TRUE', 5233.34);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Home & Kitchen', 32.17, 16, 
            '2024-07-29 22:56:15.575537', 'Los Angeles', 'TRUE', 514.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1017, 'Sports', 230.3, 5, 
            '2024-09-27 22:56:15.575537', 'Philadelphia', 'FALSE', 1151.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1081, 'Clothing', 263.61, 9, 
            '2024-06-12 22:56:15.575537', 'Chicago', 'TRUE', 2372.49);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1065, 'Clothing', 324.05, 2, 
            '2024-03-30 22:56:15.575537', 'San Diego', 'FALSE', 648.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Clothing', 326.83, 18, 
            '2024-04-07 22:56:15.575537', 'Los Angeles', 'FALSE', 5882.94);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Clothing', 185.53, 6, 
            '2024-07-19 22:56:15.575537', 'New York', 'TRUE', 1113.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1079, 'Home & Kitchen', 282.54, 9, 
            '2023-11-10 22:56:15.575537', 'Dallas', 'FALSE', 2542.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1060, 'Home & Kitchen', 243.13, 1, 
            '2024-06-22 22:56:15.575537', 'Chicago', 'FALSE', 243.13);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1040, 'Clothing', 443.07, 9, 
            '2024-03-17 22:56:15.575537', 'New York', 'TRUE', 3987.63);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1099, 'Sports', 267.48, 16, 
            '2024-08-24 22:56:15.575537', 'San Antonio', 'FALSE', 4279.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Electronics', 223.31, 13, 
            '2023-12-12 22:56:15.575537', 'San Jose', 'FALSE', 2903.03);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1067, 'Electronics', 205.22, 9, 
            '2024-06-10 22:56:15.575537', 'Phoenix', 'FALSE', 1846.98);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Sports', 288.35, 13, 
            '2024-05-02 22:56:15.575537', 'Phoenix', 'FALSE', 3748.55);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1013, 'Clothing', 402.97, 9, 
            '2024-06-30 22:56:15.575537', 'New York', 'TRUE', 3626.730000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1020, 'Home & Kitchen', 271.51, 11, 
            '2023-12-02 22:56:15.575537', 'Dallas', 'FALSE', 2986.61);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Electronics', 332.52, 4, 
            '2024-06-07 22:56:15.575537', 'San Antonio', 'FALSE', 1330.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1019, 'Toys', 370.24, 2, 
            '2024-05-31 22:56:15.575537', 'San Diego', 'FALSE', 740.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Toys', 262.48, 6, 
            '2024-05-31 22:56:15.575537', 'Dallas', 'FALSE', 1574.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1006, 'Sports', 216.27, 14, 
            '2024-06-16 22:56:15.575537', 'Philadelphia', 'TRUE', 3027.78);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1066, 'Clothing', 438.95, 4, 
            '2024-07-12 22:56:15.575537', 'Phoenix', 'FALSE', 1755.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1016, 'Electronics', 211.67, 6, 
            '2024-08-28 22:56:15.575537', 'Philadelphia', 'TRUE', 1270.02);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Clothing', 233.66, 19, 
            '2024-02-15 22:56:15.575537', 'Los Angeles', 'FALSE', 4439.54);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Electronics', 495.22, 6, 
            '2024-09-05 22:56:15.575537', 'Houston', 'TRUE', 2971.32);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1075, 'Sports', 5.12, 2, 
            '2024-05-08 22:56:15.575537', 'Chicago', 'TRUE', 10.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1058, 'Sports', 96.81, 18, 
            '2023-12-07 22:56:15.575537', 'San Antonio', 'TRUE', 1742.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Toys', 195.06, 13, 
            '2023-11-30 22:56:15.575537', 'Dallas', 'TRUE', 2535.78);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1021, 'Clothing', 466.63, 9, 
            '2024-03-09 22:56:15.575537', 'Phoenix', 'TRUE', 4199.67);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Toys', 39.66, 19, 
            '2024-08-21 22:56:15.575537', 'Philadelphia', 'FALSE', 753.54);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1037, 'Clothing', 9.7, 13, 
            '2024-07-24 22:56:15.575537', 'San Jose', 'FALSE', 126.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Toys', 31.08, 11, 
            '2024-08-22 22:56:15.575537', 'Los Angeles', 'FALSE', 341.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Home & Kitchen', 48.83, 1, 
            '2024-05-15 22:56:15.575537', 'Chicago', 'TRUE', 48.83);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Home & Kitchen', 23.61, 7, 
            '2024-04-17 22:56:15.575537', 'Chicago', 'FALSE', 165.26999999999998);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Home & Kitchen', 242.49, 15, 
            '2024-01-01 22:56:15.575537', 'Dallas', 'TRUE', 3637.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Home & Kitchen', 292.47, 1, 
            '2024-03-07 22:56:15.575537', 'San Antonio', 'TRUE', 292.47);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1097, 'Electronics', 139.49, 12, 
            '2024-04-15 22:56:15.575537', 'San Diego', 'FALSE', 1673.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1020, 'Home & Kitchen', 202.15, 7, 
            '2023-12-11 22:56:15.575537', 'San Jose', 'FALSE', 1415.05);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Sports', 50.39, 15, 
            '2024-01-28 22:56:15.575537', 'Dallas', 'TRUE', 755.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Sports', 171.5, 19, 
            '2024-06-14 22:56:15.575537', 'Philadelphia', 'TRUE', 3258.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1027, 'Electronics', 263.65, 1, 
            '2024-08-03 22:56:15.575537', 'Houston', 'FALSE', 263.65);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1063, 'Home & Kitchen', 367.47, 17, 
            '2024-11-07 22:56:15.575537', 'New York', 'FALSE', 6246.990000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Home & Kitchen', 6.66, 17, 
            '2024-10-14 22:56:15.575537', 'San Diego', 'FALSE', 113.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1068, 'Home & Kitchen', 236.32, 3, 
            '2024-06-30 22:56:15.575537', 'San Antonio', 'FALSE', 708.96);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1060, 'Toys', 152.02, 12, 
            '2024-04-10 22:56:15.575537', 'Los Angeles', 'TRUE', 1824.24);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Clothing', 427.15, 6, 
            '2024-06-28 22:56:15.575537', 'San Diego', 'FALSE', 2562.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Toys', 359.2, 11, 
            '2024-08-21 22:56:15.575537', 'Phoenix', 'FALSE', 3951.2);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1003, 'Clothing', 296.61, 3, 
            '2023-12-22 22:56:15.575537', 'San Antonio', 'FALSE', 889.83);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1034, 'Home & Kitchen', 142.25, 8, 
            '2024-04-06 22:56:15.575537', 'Houston', 'TRUE', 1138.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1063, 'Home & Kitchen', 455.62, 14, 
            '2024-09-10 22:56:15.575537', 'Phoenix', 'TRUE', 6378.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1048, 'Toys', 27.32, 14, 
            '2024-03-28 22:56:15.575537', 'San Diego', 'TRUE', 382.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1016, 'Toys', 59.19, 10, 
            '2024-06-04 22:56:15.575537', 'New York', 'TRUE', 591.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1043, 'Clothing', 198.86, 2, 
            '2024-06-10 22:56:15.575537', 'New York', 'FALSE', 397.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Sports', 66.6, 14, 
            '2024-01-15 22:56:15.575537', 'Houston', 'TRUE', 932.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Clothing', 478.43, 9, 
            '2024-03-20 22:56:15.575537', 'Chicago', 'FALSE', 4305.87);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Toys', 400.0, 3, 
            '2024-03-10 22:56:15.575537', 'San Jose', 'FALSE', 1200.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1045, 'Toys', 133.2, 8, 
            '2023-11-18 22:56:15.575537', 'Los Angeles', 'FALSE', 1065.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1005, 'Electronics', 296.33, 16, 
            '2023-11-17 22:56:15.575537', 'Chicago', 'FALSE', 4741.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Toys', 491.25, 2, 
            '2024-09-07 22:56:15.575537', 'New York', 'TRUE', 982.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1036, 'Electronics', 442.68, 6, 
            '2024-02-16 22:56:15.575537', 'New York', 'TRUE', 2656.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Sports', 302.4, 12, 
            '2024-05-16 22:56:15.575537', 'Philadelphia', 'TRUE', 3628.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Clothing', 452.34, 5, 
            '2024-02-26 22:56:15.575537', 'Phoenix', 'FALSE', 2261.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1045, 'Clothing', 494.65, 2, 
            '2024-10-17 22:56:15.575537', 'San Diego', 'FALSE', 989.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Electronics', 372.96, 16, 
            '2024-02-11 22:56:15.575537', 'Los Angeles', 'FALSE', 5967.36);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1094, 'Clothing', 37.17, 5, 
            '2024-04-13 22:56:15.575537', 'Houston', 'FALSE', 185.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Toys', 203.78, 15, 
            '2024-09-22 22:56:15.575537', 'San Diego', 'FALSE', 3056.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Home & Kitchen', 419.72, 12, 
            '2024-09-11 22:56:15.575537', 'Philadelphia', 'TRUE', 5036.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Electronics', 119.13, 4, 
            '2024-01-15 22:56:15.575537', 'New York', 'FALSE', 476.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Clothing', 416.17, 15, 
            '2024-08-27 22:56:15.575537', 'Houston', 'TRUE', 6242.55);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1084, 'Electronics', 64.57, 11, 
            '2024-04-24 22:56:15.575537', 'New York', 'FALSE', 710.27);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Electronics', 28.24, 16, 
            '2024-05-03 22:56:15.575537', 'Los Angeles', 'FALSE', 451.84);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Home & Kitchen', 195.12, 6, 
            '2023-12-27 22:56:15.575537', 'Phoenix', 'TRUE', 1170.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Toys', 23.18, 14, 
            '2023-12-08 22:56:15.575537', 'San Diego', 'TRUE', 324.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1066, 'Electronics', 478.85, 18, 
            '2024-07-31 22:56:15.575537', 'San Diego', 'FALSE', 8619.300000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1017, 'Clothing', 413.97, 12, 
            '2024-05-08 22:56:15.575537', 'Chicago', 'FALSE', 4967.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1024, 'Sports', 401.38, 11, 
            '2024-04-16 22:56:15.575537', 'Houston', 'FALSE', 4415.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1094, 'Electronics', 316.74, 13, 
            '2024-08-01 22:56:15.575537', 'San Jose', 'FALSE', 4117.62);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Electronics', 112.08, 11, 
            '2024-08-14 22:56:15.575537', 'Philadelphia', 'TRUE', 1232.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Home & Kitchen', 261.54, 16, 
            '2024-01-06 22:56:15.575537', 'San Jose', 'FALSE', 4184.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1066, 'Toys', 300.65, 15, 
            '2024-06-18 22:56:15.575537', 'Chicago', 'TRUE', 4509.75);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1045, 'Sports', 264.89, 15, 
            '2023-12-28 22:56:15.575537', 'Los Angeles', 'FALSE', 3973.35);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Clothing', 133.82, 4, 
            '2024-08-09 22:56:15.575537', 'Philadelphia', 'TRUE', 535.28);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Sports', 260.05, 11, 
            '2024-07-05 22:56:15.575537', 'Phoenix', 'TRUE', 2860.55);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1046, 'Clothing', 248.14, 19, 
            '2024-10-23 22:56:15.575537', 'San Jose', 'FALSE', 4714.66);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Toys', 498.19, 15, 
            '2023-12-04 22:56:15.575537', 'Phoenix', 'TRUE', 7472.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1022, 'Clothing', 449.23, 4, 
            '2023-11-29 22:56:15.575537', 'San Jose', 'FALSE', 1796.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1065, 'Home & Kitchen', 234.37, 13, 
            '2024-02-19 22:56:15.575537', 'Phoenix', 'TRUE', 3046.81);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1026, 'Home & Kitchen', 313.35, 19, 
            '2024-02-12 22:56:15.575537', 'San Jose', 'FALSE', 5953.650000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1001, 'Home & Kitchen', 375.2, 2, 
            '2024-02-07 22:56:15.575537', 'Phoenix', 'TRUE', 750.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Home & Kitchen', 22.26, 14, 
            '2024-10-04 22:56:15.575537', 'Chicago', 'FALSE', 311.64000000000004);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1016, 'Sports', 447.99, 4, 
            '2024-02-08 22:56:15.575537', 'San Antonio', 'FALSE', 1791.96);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1032, 'Toys', 430.76, 16, 
            '2024-02-16 22:56:15.575537', 'Philadelphia', 'TRUE', 6892.16);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Clothing', 231.43, 20, 
            '2024-08-12 22:56:15.575537', 'Houston', 'TRUE', 4628.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1042, 'Clothing', 198.63, 14, 
            '2024-04-21 22:56:15.575537', 'Los Angeles', 'TRUE', 2780.82);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Home & Kitchen', 140.11, 15, 
            '2024-08-18 22:56:15.575537', 'Dallas', 'TRUE', 2101.65);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1038, 'Home & Kitchen', 240.96, 3, 
            '2023-12-02 22:56:15.575537', 'New York', 'FALSE', 722.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Electronics', 26.97, 8, 
            '2024-05-04 22:56:15.575537', 'Houston', 'TRUE', 215.76);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Toys', 426.84, 16, 
            '2023-11-21 22:56:15.575537', 'New York', 'FALSE', 6829.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1025, 'Sports', 22.53, 10, 
            '2023-12-01 22:56:15.575537', 'Philadelphia', 'TRUE', 225.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Clothing', 167.88, 4, 
            '2024-10-04 22:56:15.575537', 'Houston', 'FALSE', 671.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1049, 'Electronics', 466.14, 18, 
            '2023-12-29 22:56:15.575537', 'Phoenix', 'FALSE', 8390.52);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1024, 'Electronics', 368.93, 2, 
            '2024-05-21 22:56:15.575537', 'Phoenix', 'FALSE', 737.86);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1023, 'Clothing', 144.29, 17, 
            '2024-04-07 22:56:15.575537', 'Dallas', 'FALSE', 2452.93);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1012, 'Sports', 130.06, 13, 
            '2024-03-14 22:56:15.575537', 'New York', 'TRUE', 1690.78);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Electronics', 7.52, 4, 
            '2024-10-02 22:56:15.575537', 'Los Angeles', 'TRUE', 30.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1006, 'Electronics', 349.38, 11, 
            '2023-11-16 22:56:15.575537', 'Philadelphia', 'FALSE', 3843.18);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1056, 'Toys', 29.15, 7, 
            '2024-07-08 22:56:15.575537', 'Phoenix', 'TRUE', 204.05);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1035, 'Sports', 268.64, 12, 
            '2024-10-25 22:56:15.575537', 'San Antonio', 'TRUE', 3223.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1044, 'Electronics', 481.25, 10, 
            '2024-05-31 22:56:15.575537', 'Chicago', 'FALSE', 4812.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1019, 'Sports', 59.19, 7, 
            '2024-10-15 22:56:15.575537', 'Chicago', 'TRUE', 414.33);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1064, 'Clothing', 447.77, 13, 
            '2023-11-28 22:56:15.575537', 'San Jose', 'TRUE', 5821.01);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Home & Kitchen', 495.78, 7, 
            '2024-04-09 22:56:15.575537', 'Los Angeles', 'TRUE', 3470.46);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1015, 'Electronics', 35.45, 17, 
            '2024-02-11 22:56:15.575537', 'Chicago', 'FALSE', 602.6500000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1013, 'Toys', 442.04, 10, 
            '2024-08-01 22:56:15.575537', 'San Jose', 'TRUE', 4420.400000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1075, 'Clothing', 260.46, 10, 
            '2024-11-01 22:56:15.575537', 'New York', 'FALSE', 2604.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Sports', 453.72, 4, 
            '2024-02-10 22:56:15.575537', 'Phoenix', 'TRUE', 1814.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Clothing', 287.8, 20, 
            '2024-07-04 22:56:15.575537', 'Phoenix', 'TRUE', 5756.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Electronics', 332.75, 4, 
            '2024-01-20 22:56:15.575537', 'San Antonio', 'TRUE', 1331.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1097, 'Sports', 274.17, 7, 
            '2024-06-02 22:56:15.575537', 'Houston', 'FALSE', 1919.19);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1065, 'Home & Kitchen', 432.92, 1, 
            '2024-04-26 22:56:15.575537', 'Chicago', 'FALSE', 432.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1031, 'Clothing', 368.29, 12, 
            '2024-10-28 22:56:15.575537', 'New York', 'TRUE', 4419.4800000000005);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1086, 'Electronics', 263.02, 13, 
            '2024-06-18 22:56:15.575537', 'San Diego', 'FALSE', 3419.26);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Toys', 434.74, 10, 
            '2024-03-15 22:56:15.575537', 'Chicago', 'TRUE', 4347.4);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Sports', 126.42, 15, 
            '2023-12-20 22:56:15.575537', 'Los Angeles', 'FALSE', 1896.3);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1050, 'Clothing', 82.88, 13, 
            '2024-01-03 22:56:15.575537', 'Houston', 'FALSE', 1077.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1024, 'Clothing', 84.4, 9, 
            '2024-01-30 22:56:15.575537', 'Chicago', 'TRUE', 759.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Home & Kitchen', 170.33, 9, 
            '2024-02-08 22:56:15.575537', 'New York', 'TRUE', 1532.97);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Home & Kitchen', 123.15, 15, 
            '2024-09-14 22:56:15.575537', 'Chicago', 'TRUE', 1847.25);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Toys', 465.39, 10, 
            '2024-05-31 22:56:15.575537', 'Los Angeles', 'TRUE', 4653.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1021, 'Toys', 57.39, 10, 
            '2024-05-18 22:56:15.575537', 'San Diego', 'FALSE', 573.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Electronics', 351.0, 8, 
            '2023-12-20 22:56:15.575537', 'Philadelphia', 'FALSE', 2808.0);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Electronics', 98.66, 16, 
            '2024-09-17 22:56:15.575537', 'Dallas', 'FALSE', 1578.56);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1085, 'Toys', 441.41, 17, 
            '2024-07-29 22:56:15.575537', 'San Diego', 'TRUE', 7503.97);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1048, 'Toys', 480.85, 5, 
            '2023-12-03 22:56:15.575537', 'San Jose', 'TRUE', 2404.25);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Sports', 235.41, 4, 
            '2024-07-24 22:56:15.575537', 'Chicago', 'FALSE', 941.64);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1041, 'Home & Kitchen', 440.14, 18, 
            '2024-05-25 22:56:15.575537', 'Phoenix', 'TRUE', 7922.519999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1069, 'Electronics', 7.55, 19, 
            '2023-12-08 22:56:15.575537', 'San Antonio', 'FALSE', 143.45);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1014, 'Home & Kitchen', 410.87, 4, 
            '2024-04-24 22:56:15.575537', 'Phoenix', 'FALSE', 1643.48);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1053, 'Home & Kitchen', 118.17, 7, 
            '2024-05-03 22:56:15.575537', 'San Diego', 'FALSE', 827.19);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Toys', 454.81, 10, 
            '2024-01-08 22:56:15.575537', 'Phoenix', 'FALSE', 4548.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1096, 'Sports', 5.55, 18, 
            '2024-10-19 22:56:15.575537', 'New York', 'FALSE', 99.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1007, 'Clothing', 280.31, 19, 
            '2024-09-14 22:56:15.575537', 'Phoenix', 'TRUE', 5325.89);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1052, 'Sports', 379.53, 4, 
            '2024-07-10 22:56:15.575537', 'Houston', 'TRUE', 1518.12);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1059, 'Sports', 133.05, 10, 
            '2024-04-25 22:56:15.575537', 'Philadelphia', 'TRUE', 1330.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1004, 'Home & Kitchen', 100.6, 1, 
            '2024-04-07 22:56:15.575537', 'Chicago', 'FALSE', 100.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1067, 'Sports', 46.63, 18, 
            '2024-07-03 22:56:15.575537', 'Phoenix', 'FALSE', 839.34);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1005, 'Electronics', 166.58, 5, 
            '2024-05-26 22:56:15.575537', 'Los Angeles', 'FALSE', 832.9000000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Home & Kitchen', 282.12, 15, 
            '2023-12-01 22:56:15.575537', 'Philadelphia', 'FALSE', 4231.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1093, 'Electronics', 62.34, 17, 
            '2024-05-14 22:56:15.575537', 'Philadelphia', 'TRUE', 1059.78);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1046, 'Clothing', 191.46, 3, 
            '2024-08-29 22:56:15.575537', 'Phoenix', 'TRUE', 574.38);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1098, 'Home & Kitchen', 9.49, 12, 
            '2024-04-24 22:56:15.575537', 'Philadelphia', 'FALSE', 113.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1054, 'Clothing', 410.25, 2, 
            '2023-11-27 22:56:15.575537', 'San Antonio', 'FALSE', 820.5);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1039, 'Home & Kitchen', 68.58, 1, 
            '2024-08-21 22:56:15.575537', 'Phoenix', 'FALSE', 68.58);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1051, 'Toys', 145.25, 17, 
            '2024-01-21 22:56:15.575537', 'New York', 'TRUE', 2469.25);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1015, 'Sports', 14.12, 16, 
            '2024-02-11 22:56:15.575537', 'San Diego', 'TRUE', 225.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1012, 'Toys', 218.96, 5, 
            '2024-01-08 22:56:15.575537', 'Houston', 'TRUE', 1094.8);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1029, 'Clothing', 420.86, 15, 
            '2024-03-08 22:56:15.575537', 'Dallas', 'FALSE', 6312.900000000001);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Sports', 199.11, 3, 
            '2024-08-11 22:56:15.575537', 'San Jose', 'FALSE', 597.33);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1016, 'Home & Kitchen', 93.85, 7, 
            '2024-05-16 22:56:15.575537', 'Philadelphia', 'TRUE', 656.9499999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Sports', 378.08, 11, 
            '2024-01-22 22:56:15.575537', 'New York', 'FALSE', 4158.88);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1018, 'Electronics', 395.46, 10, 
            '2024-09-24 22:56:15.575537', 'Chicago', 'TRUE', 3954.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1091, 'Sports', 91.01, 9, 
            '2024-09-25 22:56:15.575537', 'Chicago', 'FALSE', 819.09);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Electronics', 386.57, 14, 
            '2024-09-21 22:56:15.575537', 'San Jose', 'TRUE', 5411.98);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1054, 'Sports', 473.91, 13, 
            '2024-02-04 22:56:15.575537', 'Houston', 'FALSE', 6160.83);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Electronics', 87.36, 2, 
            '2024-04-21 22:56:15.575537', 'Philadelphia', 'TRUE', 174.72);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1089, 'Clothing', 386.64, 3, 
            '2024-11-02 22:56:15.575537', 'San Antonio', 'TRUE', 1159.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1061, 'Toys', 355.74, 7, 
            '2024-08-16 22:56:15.575537', 'San Jose', 'TRUE', 2490.1800000000003);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1022, 'Home & Kitchen', 239.42, 18, 
            '2023-11-18 22:56:15.575537', 'Houston', 'TRUE', 4309.56);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1008, 'Sports', 33.67, 3, 
            '2023-12-02 22:56:15.575537', 'Philadelphia', 'TRUE', 101.01);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1011, 'Toys', 41.97, 10, 
            '2024-04-26 22:56:15.575537', 'New York', 'TRUE', 419.7);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Home & Kitchen', 426.95, 7, 
            '2024-10-05 22:56:15.575537', 'San Diego', 'FALSE', 2988.65);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1057, 'Home & Kitchen', 495.12, 9, 
            '2024-05-23 22:56:15.575537', 'San Antonio', 'FALSE', 4456.08);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Electronics', 339.65, 17, 
            '2024-05-08 22:56:15.575537', 'Dallas', 'FALSE', 5774.049999999999);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1033, 'Clothing', 225.75, 11, 
            '2023-12-17 22:56:15.575537', 'Chicago', 'TRUE', 2483.25);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1095, 'Clothing', 325.55, 7, 
            '2024-07-05 22:56:15.575537', 'Los Angeles', 'TRUE', 2278.85);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1047, 'Toys', 299.23, 14, 
            '2024-09-04 22:56:15.575537', 'New York', 'FALSE', 4189.22);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1088, 'Clothing', 194.89, 19, 
            '2024-03-26 22:56:15.575537', 'Chicago', 'TRUE', 3702.91);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1000, 'Sports', 37.48, 4, 
            '2024-08-18 22:56:15.575537', 'Phoenix', 'TRUE', 149.92);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1015, 'Clothing', 411.65, 6, 
            '2024-10-26 22:56:15.575537', 'Los Angeles', 'TRUE', 2469.9);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1060, 'Toys', 189.06, 10, 
            '2024-01-22 22:56:15.575537', 'Chicago', 'TRUE', 1890.6);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1063, 'Clothing', 410.3, 7, 
            '2024-05-18 22:56:15.575537', 'Houston', 'TRUE', 2872.1);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1062, 'Sports', 129.99, 13, 
            '2024-02-21 22:56:15.575537', 'San Antonio', 'FALSE', 1689.87);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1068, 'Electronics', 5.51, 14, 
            '2024-08-24 22:56:15.575537', 'Chicago', 'FALSE', 77.14);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1021, 'Toys', 83.67, 4, 
            '2024-06-06 22:56:15.575537', 'Dallas', 'FALSE', 334.68);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1092, 'Electronics', 236.93, 8, 
            '2024-06-27 22:56:15.575537', 'San Diego', 'FALSE', 1895.44);
INSERT INTO RetailSalesData (ProductID, Category, Price, QuantitySold, Date, CustomerLocation, MarketingCampaign, Revenue)
    VALUES (1066, 'Electronics', 472.43, 5, 
            '2024-08-26 22:56:15.575537', 'Houston', 'FALSE', 2362.15);

-- 5. Monthly Sales Revenue by Product Category
WITH MonthlySales AS (
    SELECT 
        YEAR(Date) AS SalesYear,  -- Extracts year for yearly analysis
        MONTH(Date) AS SalesMonth,  -- Extracts month for monthly granularity
        Category,  -- Product category
        ROUND(SUM(Revenue), 2) AS TotalMonthlyRevenue,  -- Total revenue for the month
        ROUND(AVG(Revenue), 2) AS AverageMonthlyRevenue,  -- Average revenue for the month
        RANK() OVER (PARTITION BY YEAR(Date), MONTH(Date) ORDER BY SUM(Revenue) DESC) AS CategoryRank  
    FROM RetailSalesData  
    GROUP BY 
        YEAR(Date),  
        MONTH(Date),  
        Category  
)
SELECT 
    SalesYear,  
    SalesMonth,  
    Category,  
    TotalMonthlyRevenue,  
    AverageMonthlyRevenue,  
    CategoryRank
FROM MonthlySales
ORDER BY 
    SalesYear,  
    SalesMonth,  
    TotalMonthlyRevenue DESC;  

-- 6. Top 5 Products by Revenue
SELECT TOP 5
    ProductID,  
    Category,  
    ROUND(SUM(Revenue), 2) AS TotalRevenue,  
    SUM(QuantitySold) AS TotalQuantitySold,  
    ROUND(AVG(Price), 2) AS AveragePrice
FROM RetailSalesData
GROUP BY 
    ProductID,  
    Category
ORDER BY 
    TotalRevenue DESC;

-- 7. Top 5 Products by Quantity Sold
SELECT TOP 5
    ProductID,  
    Category,  
    SUM(QuantitySold) AS TotalQuantitySold,  
    ROUND(SUM(Revenue), 2) AS TotalRevenue,  
    ROUND(AVG(Price), 2) AS AveragePrice
FROM RetailSalesData
GROUP BY 
    ProductID,  
    Category
ORDER BY 
    TotalQuantitySold DESC;

-- 8. Geographic Sales Volume Analysis
WITH GeographicSales AS (
    SELECT 
        CustomerLocation,  
        ROUND(SUM(Revenue), 2) AS TotalRevenue,  
        ROUND(AVG(Revenue), 2) AS AverageSalesVolume,  
        SUM(QuantitySold) AS TotalQuantitySold,  
        COUNT(DISTINCT ProductID) AS UniqueProductsSold,  
        RANK() OVER (ORDER BY SUM(Revenue) DESC) AS RevenueRank,  
        RANK() OVER (ORDER BY SUM(QuantitySold) DESC) AS QuantityRank  
    FROM RetailSalesData
    GROUP BY 
        CustomerLocation
)
SELECT 
    CustomerLocation,  
    TotalRevenue,  
    AverageSalesVolume,  
    TotalQuantitySold,  
    UniqueProductsSold,  
    RevenueRank,  
    QuantityRank
FROM GeographicSales
ORDER BY 
    TotalRevenue DESC;

-- 9. Marketing Campaign Impact Analysis
WITH CampaignPerformance AS (
    SELECT 
        MarketingCampaign,  
        ROUND(SUM(Revenue), 2) AS TotalRevenue,  
        ROUND(AVG(Revenue), 2) AS AverageRevenue,  
        SUM(QuantitySold) AS TotalQuantitySold,  
        ROUND(AVG(QuantitySold), 2) AS AverageQuantitySold,  
        COUNT(DISTINCT ProductID) AS UniqueProductsSold,  
        COUNT(*) AS TotalTransactions,  
        ROUND(SUM(Revenue) / COUNT(*), 2) AS RevenuePerTransaction
    FROM RetailSalesData
    GROUP BY 
        MarketingCampaign
)
SELECT 
    CASE 
        WHEN MarketingCampaign = 'TRUE' THEN 'Yes'
        WHEN MarketingCampaign = 'FALSE' THEN 'No'
    END AS MarketingCampaignStatus,
    TotalRevenue,  
    AverageRevenue,  
    TotalQuantitySold,  
    AverageQuantitySold,  
    UniqueProductsSold,  
    TotalTransactions,  
    RevenuePerTransaction
FROM CampaignPerformance
ORDER BY 
    TotalRevenue DESC;

-- 10. Category Performance by Marketing Campaign
SELECT 
    Category,  
    CASE 
        WHEN MarketingCampaign = 'TRUE' THEN 'Yes'
        WHEN MarketingCampaign = 'FALSE' THEN 'No'
    END AS MarketingCampaignStatus,
    ROUND(SUM(Revenue), 2) AS TotalRevenue,  
    ROUND(AVG(Revenue), 2) AS AverageRevenue,  
    SUM(QuantitySold) AS TotalQuantitySold,  
    COUNT(*) AS TotalTransactions
FROM RetailSalesData
GROUP BY 
    Category,  
    MarketingCampaign
ORDER BY 
    Category,  
    MarketingCampaignStatus DESC;

-- 11. Clean up permanent table after analysis
DROP TABLE IF EXISTS RetailSalesData;
