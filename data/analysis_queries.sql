SELECT SUM(Sales) AS Total_Sales
FROM cleaned_superstore;

SELECT Category,
SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Month,
SUM(Sales) AS Monthly_Sales
FROM cleaned_superstore
GROUP BY Month
ORDER BY Month;

SELECT Region,
SUM(Profit) AS Total_Profit
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT Sales_Category,
COUNT(*) AS Total_Count
FROM cleaned_superstore
GROUP BY Sales_Category;

SELECT
Category,
CASE
    WHEN Sales > 1000 THEN 'High Sales'
    WHEN Sales > 500 THEN 'Medium Sales'
    ELSE 'Low Sales'
END AS Sales_Level
FROM cleaned_superstore;

SELECT
Category,
Sales,
RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank
FROM cleaned_superstore;