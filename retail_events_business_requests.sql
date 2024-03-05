SELECT DATABASE();
USE retail_events_db;

-- 1. Provide a list of products with base price greater than 500 and that are featured in promo type of 'BOGOF' (Buy One Get One Free).
-- This information will help us to identify high-value products that are currently being heavily discounted, 
-- which can be useful for evaluating our pricing and promotion strategies.

SELECT DISTINCT(p.product_name), e.base_price
 FROM fact_events e
JOIN dim_products p
ON p.product_code = e.product_code
WHERE e.base_price >500 
AND e.promo_type = 'BOGOF';

-- 2. Generate a report that provides an overview of the number of stores in each city.
-- The results will be sorted in descending order of store counts, allowing us to identify the cities with the highest store presence.
-- The report includes two essential fields city and store count, which will assist in optimizing our retail operations.

SELECT city AS City, COUNT(DISTINCT(store_id)) AS Store_Count
FROM dim_stores
GROUP BY city
ORDER BY  COUNT(DISTINCT(store_id)) DESC;

-- 3. Generate a report that displays each campaign alogn with the total revenue generated before and after the campaign?
-- The report includes three key fields: campaign_name, total_revenue(before_promotion) , total_revenue(after_promotion).
-- This report should help in evaluating the financial impact of our promotional campaigns. (Display Value in millions).

-- For the purpose of convenience I have changed the column names as below.
ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(before_promo)` TO quantity_sold_before_promo;

ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(after_promo)` TO quantity_sold_after_promo;

-- Add a new column Total_Quantity_After_promo to the fact_events table.
-- Populate it with the calculated values based on the given condition.
ALTER TABLE fact_events
ADD Total_Quantity_After_promo INT; -- Assuming Total_Quantity_After_promo is an integer value

-- Get the report that displays each campaign alogn with the total revenue generated before and after the campaign and incremental revenue.
UPDATE fact_events
SET Total_Quantity_After_promo = 
    CASE 
        WHEN promo_type = 'BOGOF' THEN quantity_sold_after_promo * 2
        ELSE quantity_sold_after_promo
    END;
  
WITH REVENUE AS(
SELECT 
    c.campaign_name,
    ROUND(SUM(e.base_price * e.quantity_sold_before_promo) / 1000000,2) AS 'Before_Campaign_Total_Revenue_Million',
    ROUND(
		SUM(
			CASE 
				WHEN e.promo_type = '25% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.75
				WHEN e.promo_type = '33% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.67
				WHEN e.promo_type = '50% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.50
				WHEN e.promo_type = '500 Cashback' THEN (e.base_price * e.Total_Quantity_After_promo) - 500
				WHEN e.promo_type = 'BOGOF' THEN (e.base_price * (e.Total_Quantity_After_promo)) * 0.5
				ELSE 0
			END
		) / 1000000,2) AS 'After_Campaign_Total_Revenue_Million'
FROM fact_events e
JOIN dim_campaigns c
ON e.campaign_id = c.campaign_id
GROUP BY c.campaign_name
)
SELECT *, After_Campaign_Total_Revenue_Million - Before_Campaign_Total_Revenue_Million AS Incremental_Revenue_Million
FROM REVENUE;

-- 4. Produce a Report that calculates the Incremental Sold Quantity (ISU%) for each category during the diwali campaign.
-- Additionally, provide rankings for the categories based on their ISU%. The report will include three Key fileds: category, ISU% and Rank Order.
-- This information will assist in assessing the category-wise success and impact of the Diwali campaign on incremental Sales.

WITH Diwali_Campaign AS (
    SELECT 
        p.category,
        SUM(e.Total_Quantity_After_promo) AS total_quantity_sold_after_promo
    FROM fact_events e
    JOIN dim_campaigns c
    ON e.campaign_id = c.campaign_id
    JOIN dim_products p
    ON e.product_code = p.product_code
    WHERE c.campaign_name = 'Diwali'
    GROUP BY p.category
),
Total_Sold_Before AS (
    SELECT 
        p.category,
        SUM(e.quantity_sold_before_promo) AS total_quantity_sold_before_promo
    FROM fact_events e
    JOIN dim_campaigns c
    ON e.campaign_id = c.campaign_id
	JOIN dim_products p
    ON e.product_code = p.product_code
	WHERE c.campaign_name = 'Diwali'
    GROUP BY p.category
)
SELECT 
    tsb.category,
    ROUND(((dc.total_quantity_sold_after_promo - tsb.total_quantity_sold_before_promo) * 100) / tsb.total_quantity_sold_before_promo,2) AS ISU_percentage,
    RANK() OVER (ORDER BY 
					ROUND(((dc.total_quantity_sold_after_promo - tsb.total_quantity_sold_before_promo) * 100) / tsb.total_quantity_sold_before_promo,2)
				DESC) AS Rank_Order
FROM Diwali_Campaign dc
JOIN Total_Sold_Before tsb
ON dc.category = tsb.category;

-- 5. Create a report featuring the Top 5 products, ranked by Incremental Revenue Percentage (IR%), across all campaigns.
-- The report will provide essential information including product name, category and ir %.
-- This analysis helps identify the most successul products in terms of incremental revenue across our campaigns, assisting in product optimization.

WITH Total_Revenue AS (
    SELECT 
        p.product_name,
        p.category,
        SUM(e.base_price * e.quantity_sold_before_promo) AS 'Before_Campaign_Total_Revenue',
		SUM(
			CASE 
				WHEN e.promo_type = '25% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.75
				WHEN e.promo_type = '33% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.67
				WHEN e.promo_type = '50% OFF' THEN (e.base_price * e.Total_Quantity_After_promo) * 0.50
				WHEN e.promo_type = '500 Cashback' THEN (e.base_price * e.Total_Quantity_After_promo) - 500
				WHEN e.promo_type = 'BOGOF' THEN (e.base_price * (e.Total_Quantity_After_promo)) * 0.5
				ELSE 0
			END
		) AS 'After_Campaign_Total_Revenue'
    FROM fact_events e
	JOIN dim_products p
    ON e.product_code = p.product_code
    GROUP BY p.product_name, p.category
)
SELECT 
    product_name,
    category,
    ROUND(((After_Campaign_Total_Revenue - Before_Campaign_Total_Revenue)* 100 / Before_Campaign_Total_Revenue) ,2) AS IR_percentage
FROM Total_Revenue
ORDER BY ROUND(((After_Campaign_Total_Revenue - Before_Campaign_Total_Revenue)* 100 / Before_Campaign_Total_Revenue) ,2) DESC
LIMIT 5;
