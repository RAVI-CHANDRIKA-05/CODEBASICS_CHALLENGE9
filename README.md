# AtliQ Mart Festival Sales Promotional Analysis

**Codebasics Resume Project Challenge – Data Analytics Project**

The Codebasics Resume Project Challenge is an engaging initiative hosted by Codebasics. Drawing participants from around the globe, this challenge showcases the skills and talents of aspiring data analysts. Submissions are reviewed by the Codebasics team and shared with a global audience on LinkedIn, offering participants valuable exposure and recognition.

---
**Table of Contents**

1. [About The Project](#1-about-the-project)
2. [Live Interactive Dashboard](#2-live-interactive-dashboard)
3. [Video Presentation Of The Project](#3-video-presentation-of-the-project)
4. [Analysis and Insights](#4-analysis-and-insights)
   1. [Recommended Insights](#4.1-recommended-insights)
      - [Store Performance Analysis](#4.1.1-store-performance-analysis)
   2. [Promotion Type Analysis](#4.2-promotion-type-analysis)
   3. [Product and Category Analysis](#4.3-product-and-category-analysis)

---

# 1. About The Project
The project is about an imaginary retail giant called AtliQ Mart.

AtliQ Mart is a retail giant with over 50 supermarkets in the southern region of India. All their 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024 (festive time in India) on their AtliQ branded products. <br>Through this exercise the sales director wants to understand which promotions did well and which did not so that they can make informed decisions for their next promotional period. <br>

# 2. Live Interactive Dashboard
#  3. Video Presentation Of The Project
# 4. Analysis and Insights
## 4.1 Recommened Insights

### 4.1.1 Store Performance Analysis:<br>
**1. Which are the top 10 stores in terms of Incremental Revenue(IR) generated from the promotions?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

**2. Which are the bottom 10 store when it comes to Incremental Sold Units (ISU)?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

**3. How does the performance of stores vary by city? Are there any common characteristics among the top-performing stores that could be leverages across other stores?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Typically the top performing stres belong to Bengaluru or Chennai, Tier 1 cities. Stores belonging to Tier 2 cities have not generated much revenue.
  Atliq_Farm_Chakki_Atta (1KG), Atliq_Home_Essential_8_Product_Combo, Atliq_waterproof_Immersion_Rod</p>
</div>

### 4.2 Promotion Type Analysis:<br>
**1. What are the top 2 promotion types that resulted in the highest Incremental Revenue?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

**2. What are the bottom 2 promotion types in terms of their impact on Incremental Sold Units?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

**3. Is there any significance difference in the performance of discount -based promotions versus BOGOF (Buy One Get One Free) or cashback promotions?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

**4. Which promotions strike the best balance between Incremental Sold Units and maintaining healthy margins?**<br>
<div style="display: flex; align-items: center; border: 1px solid #ccc; padding: 10px;">
  <img src="https://example.com/image.jpg" alt="Image" style="width: 100px; height: auto; margin-right: 10px;">
  <p>Your text goes here. You can add more content, format it using Markdown, and style it as needed.</p>
</div>

### 4.3 Product and Category Analysis:<br>
**1. Which product categories saw the most significant lift in sales from the promotions?**<br>
**2. Are there specific products that respond exceptionally well or poorly to promotions?**<br>
**3. What is the correlation between product categoy and promotion type effectiveness?**<br>

## 4.2 Business Requests

**1. Provide a list of products with base price greater than 500 and that are featured in promo type of 'BOGOF' (Buy One Get One Free).**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/product_name.JPG" alt="image" /> <br>
Atliq_Double_Bedsheet_set and Atliq_waterproof_Immersion_Rod are the two products with base price greater than 500 which are featured under BOGOF (Buy One Get One Free) promo  type.<br>

~~~~sql
SELECT DISTINCT(p.product_name)
 FROM fact_events e
JOIN dim_products p
ON p.product_code = e.product_code
WHERE e.base_price >500 
AND e.promo_type = 'BOGOF';
~~~~

**2. Generate a report that provides an overview of the number of stores in each city.**

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/city_store.JPG" alt="image" /><br>
In terms of store count, Bengaluru leads with 10 stores, followed by Chennai with 8 stores, and Hyderabad with 7 stores.<br>

~~~~sql
SELECT city AS City, COUNT(DISTINCT(store_id)) AS Store_Count
FROM dim_stores
GROUP BY city
ORDER BY  COUNT(DISTINCT(store_id)) DESC;
~~~~
<br><br>

**3. Generate a report that displays each campaign alogn with the total revenue generated before and after the campaign?**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/campaign_name.JPG" alt="image" /><br>
Diwali campaign generated the highest incremental revenue at 114.25 million, while the Sankranthi campaign yielded 72.20 million.<br>

~~~~sql
ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(before_promo)` TO quantity_sold_before_promo;

ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(after_promo)` TO quantity_sold_after_promo;

SELECT 
    c.campaign_name,
    ROUND(SUM(e.base_price * e.quantity_sold_before_promo) / 1000000,2) AS 'Before_Campaign_Total_Revenue(Million)',
    ROUND(
		SUM(
			CASE 
				WHEN e.promo_type = '25% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.75
				WHEN e.promo_type = '33% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.67
				WHEN e.promo_type = '50% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.50
				WHEN e.promo_type = '500 Cashback' THEN (e.base_price * e.quantity_sold_after_promo) - 500
				WHEN e.promo_type = 'BOGOF' THEN (e.base_price * (e.quantity_sold_after_promo * 2)) * 0.5
				ELSE 0
			END
		) / 1000000,2) AS 'After_Campaign_Total_Revenue(Million)'
FROM fact_events e
JOIN dim_campaigns c
ON e.campaign_id = c.campaign_id
GROUP BY c.campaign_name;
~~~~

**4. Produce a Report that calculates the Incremental Sold Quantity (ISU%) for each category during the diwali campaign. Additionally, provide rankings for the categories based on their ISU%.**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/category.JPG" alt="image" /><br>
Home Appliances category exhibits the highest ISU% increase, followed by the Combo1 category. Notably, there is a remarkable 244.23% ISU% surge in the Home Appliances category, while Combo1 follows closely behind with a 202.36% increase.<br>

~~~~sql
ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(before_promo)` TO quantity_sold_before_promo;

ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(after_promo)` TO quantity_sold_after_promo;

WITH Diwali_Campaign AS (
    SELECT 
        p.category,
        SUM(e.quantity_sold_after_promo) AS total_quantity_sold_after_promo
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
~~~~

**5. Create a report featuring the Top 5 products, ranked by Incremental Revenue Percentage (IR%), across all campaigns.** 

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/products.JPG" alt="image" /><br>
The table shows, top 5 products ranked by Incremental Revenue Percentage across all campaigns. Atlique_waterproof_Immersion_Rod leads with an IR% of 266.19%, closely followed by Atliq_High_Glo_15W_LED_Bulb with an IR% of 262.98%.<br>

~~~~sql
ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(before_promo)` TO quantity_sold_before_promo;

ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(after_promo)` TO quantity_sold_after_promo;

WITH Total_Revenue AS (
    SELECT 
        p.product_name,
        p.category,
        SUM(e.base_price * e.quantity_sold_before_promo) AS 'Before_Campaign_Total_Revenue',
		SUM(
			CASE 
				WHEN e.promo_type = '25% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.75
				WHEN e.promo_type = '33% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.67
				WHEN e.promo_type = '50% OFF' THEN (e.base_price * e.quantity_sold_after_promo) * 0.50
				WHEN e.promo_type = '500 Cashback' THEN (e.base_price * e.quantity_sold_after_promo) - 500
				WHEN e.promo_type = 'BOGOF' THEN (e.base_price * (e.quantity_sold_after_promo * 2)) * 0.5
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
    ROUND(((After_Campaign_Total_Revenue - Before_Campaign_Total_Revenue) / Before_Campaign_Total_Revenue) * 100,2) AS IR_percentage
FROM Total_Revenue
ORDER BY IR_percentage DESC
LIMIT 5;
~~~~

