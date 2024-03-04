# AtliQ Mart Festival Sales Promotional Analysis

**Codebasics Resume Project Challenge – Data Analytics Project**

The Codebasics Resume Project Challenge is an engaging initiative hosted by Codebasics. Drawing participants from around the globe, this challenge showcases the skills and talents of aspiring data analysts. Submissions are reviewed by the Codebasics team and shared with a global audience on LinkedIn, offering participants valuable exposure and recognition.

---
**Table of Contents**

1. [About The Project](#1-about-the-project)
2. [Live Interactive Dashboard](#2-live-interactive-dashboard)
3. [Presentation of Key Insights](#3-presentation-of-key-insights)
4. [Video Presentation Of The Project](#4-video-presentation-of-the-project)
5. [Analysis and Insights](#5-analysis-and-insights)
    1. [Recommended Insights](#51-recommened-insights)
        - [Store Performance Analysis](#511-store-performance-analysis)
        - [Promotion Type Analysis](#512-promotion-type-analysis)
        - [Product and Category Analysis](#513-product-and-category-analysis)
    2. [Business Requests](#52-business-requests)
6. [Dataset Provided by Codebasics](#6-dataset-provided-by-codebasics)
7. [Project Execution](#7-project-execution)
    1. [Tools Used](#71-tools-used)
    2. [Prodecure Followed for Addressing Recommended Insights](#72-prodecure-followed-for-addressing-recommended-insights)
        - [Data Preparation](#721-data-preparation)
        - [Data Modeling](#722-data-modeling)
        - [Dashboard Creation](#723-dashboard-creation)
    3. [Prodecure Followed for Addressing Business Requests](#73-prodecure-followed-for-addressing-business-requests)

---

# 1. About The Project
The project is about an imaginary retail giant called AtliQ Mart.

AtliQ Mart is a retail giant with over 50 supermarkets in the southern region of India. All their 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024 (festive time in India) on their AtliQ branded products. <br>Through this exercise the sales director wants to understand which promotions did well and which did not so that they can make informed decisions for their next promotional period. <br>

# 2. Live Interactive Dashboard

Checkout the live interactive dashboard here. Made in Power BI. 

<iframe title="AtliQ_Mart_Festival_Sales_Promotional_Analysis" width="854" height="480" src="https://app.powerbi.com/view?r=eyJrIjoiMzAxMDYyMDUtMzZmYS00ODdiLWEwYjQtMDg0MWM1Mjg4Y2E5IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9&pageName=ReportSection52cd1bc4e9fbeb1610fb" frameborder="0" allowFullScreen="true"></iframe>

# 3. Presentation of Key Insights

In this presentation, I'll walk you through the insights and findings from my analysis of AtliQ Mart's promotional campaigns we will look at the sales performance, promotion effectiveness, and key trends observed during these promotional periods.

<div style="position: relative; width: 100%; height: 0; padding-top: 56.2500%;
 padding-bottom: 0; box-shadow: 0 2px 8px 0 rgba(63,69,81,0.16); margin-top: 1.6em; margin-bottom: 0.9em; overflow: hidden;
 border-radius: 8px; will-change: transform;">
  <iframe loading="lazy" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0;margin: 0;"
    src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAF-Yua7_SE&#x2F;I8Hj8V3eiAF44nwZukEw4Q&#x2F;view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div><br>

#  4. Video Presentation Of The Project

Here's the video presentation of the insights. Please have a look.

[![IMAGE ALT TEXT HERE](https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/youtube.JPG)](https://www.youtube.com/watch?v=giR2HClR0t4)

# 5. Analysis and Insights

## 5.1 Recommened Insights

### 5.1.1 Store Performance Analysis:<br>
**1. Which are the top 10 stores in terms of Incremental Revenue(IR) generated from the promotions?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/top10store_incrementalrevenue.JPG" alt="Image" style="width: 350px; height: auto; margin-right: 10px;">
The best stores are in Bengaluru, Chennai, and Mysuru. In Bengaluru, 4 out of 10 stores are in the top 10. Chennai also has 4 out of its 8 stores in the top 10. Mysuru has 2 out of its 4 stores in the top 10.
<br><br><br><br><br><br><br>

*******************************************

**2. Which are the bottom 10 store when it comes to Incremental Sold Units (ISU)?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/bottom10stores_isu.JPG" alt="Image" style="width: 350px; height: auto; margin-right: 10px;">
All three stores from Mangalore are among the bottom 10 for Incremental Sold Units (ISU). Similarly, both stores from Trivandrum are also in the bottom 10. Additionally, two out of four stores from Visakhapatnam are also in the bottom 10 for ISU.
<br><br><br><br><br>

*******************************************

**3. How does the performance of stores vary by city? Are there any common characteristics among the top-performing stores that could be leverages across other stores?**<br>

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/citywise.JPG" alt="Image" style="width: 600px; height: auto; margin-right: 10px;"><br>
Stores located in Tier 1 cities like Bengaluru and Chennai exhibit superior performance. Additionally, there's a notable correlation between the number of stores and revenue generation, suggesting that a higher store count contributes to increased revenue. Furthermore, selling a greater quantity of products also positively impacts revenue generation.
<br><br><br><br>

*******************************************

### 5.1.2 Promotion Type Analysis:<br>
*******************************************

**1. What are the top 2 promotion types that resulted in the highest Incremental Revenue?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/promotype_top2.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
The top promotion types that resulted in the highest incremental revenue are "500 Cashback" and "BOGOF" (Buy One Get One Free). This is due to their effectiveness in incentivizing purchases. "500 Cashback" offers a direct monetary benefit to customers, encouraging them to make purchases to avail the cashback. On the other hand, "BOGOF" offers customers the perception of getting more value for their money, driving increased sales volume by providing an additional product for free with a purchase.
<br><br><br>

*******************************************

**2. What are the bottom 2 promotion types in terms of their impact on Incremental Sold Units?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/bottom2_promotype.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
"25% off" and "50% off" promotion types are among the least effective in terms of driving incremental sold units. These promotions may be less effective in driving incremental sales due to their reliance solely on price reduction, potentially leading to perceptions of lower product value. 
<br><br><br><br>

*******************************************

**3. Is there any significance difference in the performance of discount -based promotions versus BOGOF (Buy One Get One Free) or cashback promotions?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/isu_vs_ir.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
500 Cashback and BOGOF promotions have outperformed discount-based offers, likely due to their perceived value addition beyond mere price reduction. By providing tangible benefits like cash returns or free items, these promotions effectively incentivize purchases and attract customers, thereby driving sales and enhancing revenue.
<br><br><br><br>

*******************************************

**4. Which promotions strike the best balance between Incremental Sold Units and maintaining healthy margins?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/isu_vs_ir.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
500 cashback promotion strikes the best balance between Incremental Sold Units and maintaining healthy margins. It offers a direct monetary benefit to customers, incentivizing purchases without requiring them to buy multiple items or wait for a discount. This immediate cashback appeal can attract more customers and lead to higher sales volume while still maintaining healthy profit margins.
<br><br><br><br>

*******************************************

### 5.1.3 Product and Category Analysis:<br>
*******************************************

**1. Which product categories saw the most significant lift in sales from the promotions?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/sales_lift_cat.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
The home appliance, combo 1, and home care categories experienced the most significant increase in sales as a result of the promotions. 
<br><br><br><br><br><br><br><br>

*******************************************

**2. Are there specific products that respond exceptionally well or poorly to promotions?**<br>

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/products_ha_prr.JPG" alt="Image" style="width: 500px; height: auto; margin-right: 10px;"><br><br>
<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/products_combo_prr.JPG" alt="Image" style="width: 500px; height: auto; margin-right: 10px;"><br><br>
<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/products_pc_prr.JPG" alt="Image" style="width: 500px; height: auto; margin-right: 10px;"><br><br>
Yes, certain products respond exceptionally well or poorly to promotions. For example, products like the waterproof immersion rod, high glo 15w LED bulb, and home essentials 8-product combo performed exceptionally well during the promotions. On the other hand, products belonging to the personal care category did not perform that well. This indicates that the effectiveness of promotions can vary significantly depending on the product category and the specific products being promoted.
<br><br><br>

*******************************************

**3. What is the correlation between product categoy and promotion type effectiveness?**<br>

<img align="right" src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/prod_cate_effectivenss.JPG" alt="Image" style="width: 300px; height: auto; margin-right: 10px;">
Certain product categories, such as home appliances, home care, grocery, and staples, performed well in BOGOF promotions, indicating that this promotion type was effective in driving sales within these categories. Conversely, personal care products did not perform well, even with a 25% discount offer. 
<br><br><br><br><br><br><br><br>

*******************************************

## 5.2 Business Requests

**1. Provide a list of products with base price greater than 500 and that are featured in promo type of 'BOGOF' (Buy One Get One Free).**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/product_name.JPG" alt="image" /> <br>
Atliq_Double_Bedsheet_set and Atliq_waterproof_Immersion_Rod are the two products with base price greater than 500 which are featured under BOGOF (Buy One Get One Free) promo type.<br>

~~~~sql
SELECT DISTINCT(p.product_name), e.base_price
 FROM fact_events e
JOIN dim_products p
ON p.product_code = e.product_code
WHERE e.base_price >500 
AND e.promo_type = 'BOGOF';
~~~~
<br><br>

*******************************************

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

*******************************************

**3. Generate a report that displays each campaign alogn with the total revenue generated before and after the campaign?**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/campaign_name.JPG" alt="image" /><br>
Diwali campaign generated the highest incremental revenue at 114.25 million, while the Sankranthi campaign yielded 72.20 million.<br>

~~~~sql
-- For the purpose of convenience I have changed the column names as below.
ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(before_promo)` TO quantity_sold_before_promo;

ALTER TABLE fact_events
RENAME COLUMN `quantity_sold(after_promo)` TO quantity_sold_after_promo;
~~~~

~~~~sql
-- Adds a new column Total_Quantity_After_promo to the fact_events table.
-- Populates it with the calculated values based on the given condition.
ALTER TABLE fact_events
ADD Total_Quantity_After_promo INT; -- Assuming Total_Quantity_After_promo is an integer value

UPDATE fact_events
SET Total_Quantity_After_promo = 
    CASE 
        WHEN promo_type = 'BOGOF' THEN quantity_sold_after_promo * 2
        ELSE quantity_sold_after_promo
    END;
~~~~

~~~~sql
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
~~~~
<br><br>

*******************************************

**4. Produce a Report that calculates the Incremental Sold Quantity (ISU%) for each category during the diwali campaign. Additionally, provide rankings for the categories based on their ISU%.**

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/category.JPG" alt="image" /><br>
Home Appliances category exhibits the highest ISU% increase, followed by the Home Care and Combo1 categories. Notably, there is a remarkable 588% ISU% surge in the Home Appliances category, while Home Care is at 203.14%, Combo1 follows closely behind with a 202.36% increase.<br>

~~~~sql
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
~~~~
<br><br>

*******************************************

**5. Create a report featuring the Top 5 products, ranked by Incremental Revenue Percentage (IR%), across all campaigns.** 

<img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/products.JPG" alt="image" /><br>
Atlique_waterproof_Immersion_Rod leads with an IR% of 266.19%, closely followed by Atliq_High_Glo_15W_LED_Bulb with an IR% of 262.98%.
Atliq_Double_Bedsheet_Set, Atliq_Curtains, Atliq_Home_Essential_8_Product_Combo made significant contribution to revenue generation.<br>

~~~~sql
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
~~~~
<br><br>

*******************************************

# 6. Dataset Provided by Codebasics:
**Thanks to Codebasics for providing this wonderful challenge.**<br>
Here is the link to this challenge: [CodeBasics Resume Project Challenge](https://codebasics.io/challenge/codebasics-resume-project-challenge)

**Team provided 4 CSV files. Below is information regarding the columns described in the CSV files:**
1. dim_campaigns
2. dim_products
3. dim_stores
4. fact_events


## 6.1 Column Description for dim_campaigns:
- campaign_id: Unique identifier for each promotional campaign.
- campaign_name: Descriptive name of the campaign (e.g., Diwali, Sankranti).
- start_date: The date on which the campaign begins, formatted as DD-MM-YYYY.
- end_date: The date on which the campaign ends, formatted as DD-MM-YYYY.


*******************************************


## 6.2 Column Description for dim_products:
- product_code: Unique code assigned to each product for identification.
- product_name: The full name of the product, including brand and specifics (e.g., quantity, size).
- category: The classification of the product into broader categories such as Grocery & Staples, Home Care, Personal Care, Home Appliances, etc.


*******************************************



## 6.3 Column Description for dim_stores:
- store_id: Unique code identifying each store location.
- city: The city where the store is located, indicating the geographical market.


*******************************************



## 6.4 Column Description for fact_events:
- event_id: Unique identifier for each sales event.
- store_id: Refers to the store where the event took place, linked to the dim_stores table.
- campaign_id: Indicates the campaign under which the event was recorded, linked to the dim_campaigns table.
- product_code: The code of the product involved in the sales event, linked to the dim_products table.
- base_price: The standard price of the product before any promotional discount.
- promo_type: The type of promotion applied (e.g., percentage discount, BOGOF(Buy One Get One Free), cashback).
- quantity_sold(before_promo): The number of units sold in the week immediately preceding the start of the campaign, serving as a baseline for comparison with promotional sales.
- quantity_sold(after_promo): The quantity of the product sold after the promotion was applied.


*******************************************

# 7. Project Execution:

## 7.1 Tools Used:

MySQL to find answers to business questions.
Power BI for data visualization and dashboard creation.
Excel for data preprocessing and transformation.

## 7.2 Prodecure Followed for Addressing Recommended Insights:

### 7.2.1 Data Preparation:

* Imported the extracted data (csv file) into Excel for initial preprocessing.
* Cleaned and transformed the data as needed, ensuring consistency and accuracy.
* Added Tier column to cities for extra input.

Note: A database named `retail_events_db` includes all the tables mentioned above. This was used while writing SQL queries to find answers to business questions.<br><br>
**Click image to view pdf**
<div style="display:flex;">
    <a href="https://github.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/blob/main/input_files/ad-hoc-requests.pdf"><img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/business_request.JPG" alt="Image 1" style="width:40%; margin-right:20px"></a>    
    <a href="https://github.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/blob/main/input_files/Recommended_Insights.pdf"><img src="https://raw.githubusercontent.com/RAVI-CHANDRIKA-05/CODEBASICS_CHALLENGE9/main/images/recommendedinsights.JPG" alt="Image 2" style="width:40%;"></a>
</div>

### 7.2.2 Data Modeling:

* Designed the data model in Power BI, ensuring the relationships between tables is correct.
* Performed required transformations of data.
* Changed the Removed Atliq_from products for better visualization.

### 7.2.3 Dashboard Creation:

* Utilized Power BI's visualization tools to create interactive and insightful dashboards.
* Incorporated relevant charts, graphs, and slicers to analyze sales performance, campaign effectiveness, and product trends.

## 7.3 Prodecure Followed for Addressing Business Requests:

* Extracted data from the MySQL database by crafting SQL queries tailored to the specific data requirements. 
* Formulated SQL queries to retrieve essential information for fulfilling Business Requests effectively.
* Ensured data accuracy by cross-referencing and validating the query results with visualizations generated in Power BI.<br>
Created a presentation and video using Canva to provide a visually appealing and comprehensive submission.<br>

By leveraging MySQL, Power BI, and Excel, I was able to build a comprehensive dashboard that provides valuable insights into sales performance and marketing campaign effectiveness, facilitating data-driven decision-making.
