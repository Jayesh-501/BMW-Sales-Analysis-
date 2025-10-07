-- Total sales by fuel Type
select Fuel_Type,sum(Sales_Volume) Total_sales
from bmw_sales
group by Fuel_Type
order by Total_sales desc;

-- highest sales region 
select Region,sum(Sales_volume) highest_sales_region
from bmw_sales
group by Region
order by highest_sales_region desc
limit 1;

-- Top Fuel Type by Sales
select Fuel_Type,sum(Sales_volume) highest_sales_region
from bmw_sales
group by Fuel_Type
order by highest_sales_region desc
limit 1;

-- Yearly Sales Trend
select Year,sum(Sales_volume) yearly_sales
from bmw_sales
group by Year
order by yearly_sales desc;

-- Avg Price per Fuel Type
select Fuel_Type,round(avg(Price_USD)) as avg_price
from bmw_sales
group by Fuel_Type;

-- Avg Engine Size by Region
select Region,round(avg(Engine_Size_L),2) as avg_engine
from bmw_sales
group by Region
order by Region desc;

-- Most Popular Color
select color,count(*) as NO_of_cars
from bmw_sales
group by color
order by NO_of_cars desc;

-- Top 3 Selling Model
select Model,sum(Sales_Volume) total_sales
from bmw_sales
group by Model
order by total_sales desc
limit 3;

-- Average Price vs Sales Relationship
SELECT 
  CASE 
    WHEN Price_USD < 60000 THEN 'Low Price'
    WHEN Price_USD BETWEEN 60000 AND 100000 THEN 'Mid Price'
    ELSE 'High Price'
  END AS Price_Range,
  ROUND(AVG(Sales_Volume), 2) AS Avg_Sales
FROM bmw_sales
GROUP BY Price_Range
ORDER BY Avg_Sales DESC;

-- Engine Size vs Sales
SELECT 
  CASE 
    WHEN Engine_Size_L < 2.5 THEN 'Small Engine'
    WHEN Engine_Size_L BETWEEN 2.5 AND 4.0 THEN 'Mid Engine'
    ELSE 'Large Engine'
  END AS Engine_Category,
  ROUND(AVG(Sales_Volume), 2) AS Avg_Sales
FROM bmw_sales
GROUP BY Engine_Category
ORDER BY Avg_Sales DESC;
