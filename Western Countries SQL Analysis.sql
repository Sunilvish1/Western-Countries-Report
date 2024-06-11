Use Countries;

Select * from `western_ countries _financial _data`;

Select * From `western_ countries _financial _data`
limit 5;


Alter Table `western_ countries _financial _data`
Rename column ï»¿Segment to Segment;

# 1-Product wise Sales

SELECT Product, SUM(Sales) AS Total_Sales
FROM  `western_ countries _financial _data`
GROUP BY Product;


#2- Segment wise profit

SELECT Segment, SUM(Profit) AS Total_Profit
FROM  `western_ countries _financial _data`
GROUP BY Segment;

# 3-Yearly sales

select Year, sum(Sales) As yearly_sales from  `western_ countries _financial _data`
group by Year;

# 4-Country wise Sale

select country, sum(Sales) As Country_sales from  `western_ countries _financial _data`
group by country;

				
# 5-Profit and sales by Qt
				
SELECT Year, CASE
WHEN Month_Number IN (1, 2, 3) THEN 'Q1'
WHEN Month_Number IN (4, 5, 6) THEN 'Q2'
WHEN Month_Number IN (7, 8, 9) THEN 'Q3'
WHEN Month_Number IN (10, 11, 12) THEN 'Q4'
END AS Quarter,
SUM(Sales) AS QuarterlySales,
SUM(Profit) AS QuarterlyProfit
FROM  `western_ countries _financial _data`
GROUP BY Year, Quarter

#6 Yearly profit
Select year, sum(profit) as Yearly_profit from  `western_ countries _financial _data`
Group by Year;

		
# 7 Top 2 countries
SELECT Country, SUM(Sales) AS TotalSales
		FROM  `western_ countries _financial _data`
		GROUP BY Country
		ORDER BY TotalSales DESC
		LIMIT 2;

#8 Product wise discount

SELECT Product, Avg(Discounts) AS AvgProductDiscount
FROM  `western_ countries _financial _data`
GROUP BY Product
ORDER BY AvgProductDiscount DESC;

#9 No.of units sold year over year

Select Year, sum(units_sold) as Noofunitsold from  `western_ countries _financial _data`
group by year
order  by year;

#10 Segment wise Product Sales
select segment, product ,sum(Sales) as segment_wise_product_sales from  `western_ countries _financial _data`
group by segment,product
Limit 10;
            
SELECT
Segment,
MAX(Sales) AS HighestSales
FROM `western_ countries _financial _data`
GROUP BY
Segment;
 
			
#11 Segment wise product wise profit
select segment,profit, sum(profit) as segmentwiseprofit from  `western_ countries _financial _data`
group by segment,profit
limit 10;
