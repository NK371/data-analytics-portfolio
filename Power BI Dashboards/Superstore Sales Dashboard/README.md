# Superstore Sales Dashboard

<img width="1586" height="917" alt="image" src="https://github.com/user-attachments/assets/93eb03c9-5aed-44ab-85c7-37cdff162352" />

---

<img width="1586" height="917" alt="image" src="https://github.com/user-attachments/assets/a16c9c40-699e-4045-9f7f-a32fd6f90401" />

## Project Overview

This project presents an **interactive Power BI dashboard** built using the Superstore Sales dataset to analyze sales performance, profitability, regional distribution, customer segments, shipping efficiency, and time-based trends.

The objective of this dashboard is to transform raw transactional data into actionable business insights that can support strategic decision-making in retail operations.

The dashboard enables stakeholders to:

- Monitor KPIs at a glance
- Identify top-performing states and categories
- Track monthly trends and year-over-year (YoY) growth
- Evaluate shipping efficiency and return rates
- Compare performance across regions and segments

---

## Business Objectives

This dashboard answers key business questions such as:

- Which regions contribute the most to revenue?
- What product categories drive the highest sales?
- How does sales and profit trend month-over-month and year-over-year?
- Which shipping modes are most used?
- What is the return rate and average shipping time?
- Which states generate the highest revenue?

---

## Dashboard Structure & Explanation

### KPI Summary (Top Section)

The top section provides a quick snapshot of business health:

- **Total Sales:** 1.57M
- **Total Profit:** 175.26K
- **Total Quantity Sold:** 22.32K
- **Return Rate:** 4.86%
- **Average Shipping Days:** 3.93

These KPIs allow executives to immediately assess overall performance without navigating into detailed visuals.

---

### Sales Distribution Analysis

#### Sales by Payment Mode

Breakdown of customer payment preferences:

- COD (43%)
- Online (35%)
- Cards (22%)

**Business Insight:** A high share of COD indicates operational dependency on cash-based fulfillment. This may affect working capital cycles.

---

#### Sales by Segment

- Consumer (48%)
- Corporate (33%)
- Home Office (19%)

**Business Insight:** The Consumer segment is the largest contributor, indicating retail-focused demand dominance.

---

#### Sales by Region

- West (33%)
- East (29%)
- Central
- South (16%)

**Business Insight:** West region leads sales contribution. Regional marketing and inventory allocation can be optimized accordingly.

---

### Category & Sub-Category Performance

#### Sales by Category

- Office Supplies – 0.64M
- Technology – 0.47M
- Furniture – 0.45M

Office Supplies drives the highest revenue.

---

#### Sales by Sub-Category

Top contributors:

- Phones – 0.20M
- Chairs – 0.18M
- Binders – 0.17M
- Storage – 0.15M
- Accessories – 0.12M

**Business Insight:** Phones and Chairs are major revenue drivers. Inventory planning and promotional strategies can focus on these high-performing SKUs.

---

### Shipping Analysis

#### Sales by Ship Mode

- Standard Class – 0.50M
- Second Class – 0.17M
- First Class – 0.11M
- Same Day – 0.05M

**Business Insight:** Standard shipping dominates usage, indicating customer preference for cost-effective delivery over speed.

---

### Geographic Sales Analysis

#### Sales & Profit by State (Map Visualization)

Bubble size represents sales concentration across North America.

Top Performing States:

- California
- New York
- Texas
- Washington
- Pennsylvania

This visualization highlights geographic revenue clusters and expansion opportunities.

---

### Time Series Analysis

#### Monthly Sales YoY Comparison (2024 vs 2025)

- Clear growth trend in 2025 compared to 2024
- Peak performance observed in Q4

**Insight:** Seasonal spikes (especially toward year-end) indicate strong holiday-driven sales cycles.

---

#### Monthly Profit YoY

- Profit growth aligned with sales growth
- Some volatility across mid-year months

This helps evaluate operational efficiency beyond revenue growth.

---

#### Daily Sales Trend (Order Date Analysis)

The daily time-series view shows:

- High variability in daily revenue
- Gradual upward momentum into 2025
- Forecasting zone (highlighted region) for early 2026

This enables short-term trend evaluation and predictive planning.

---

## Tools & Technologies Used

- **Power BI Desktop**
- Data Modeling (Star Schema)
- DAX for KPI Calculations
- Time Intelligence Functions (YoY calculations)
- Interactive Slicers (Region Filter)
- Map & Time-Series Visualizations

---

## Data Modeling Approach

- Fact Table: Orders
- Dimension Tables: Date, Region, Category, Segment, State
- Relationships defined using primary and foreign keys
- DAX measures created for:
    - Total Sales
    - Total Profit
    - Return Rate
    - YoY Growth
    - Average Ship Days

---

## Key Business Insights

- Revenue is heavily concentrated in West and East regions.
- Consumer segment drives nearly half of total sales.
- Office Supplies outperforms other categories.
- Standard Class shipping dominates customer preference.
- Clear seasonal uplift observed in Q4.
- Return rate is under 5%, indicating operational stability.

---

## What This Project Demonstrates

This project showcases my ability to:

- Clean and transform retail sales data
- Build meaningful KPIs using DAX
- Apply time intelligence functions
- Design intuitive executive dashboards
- Extract actionable business insights
- Translate data into strategic recommendations

---

## How to Use This Dashboard

1. Use the **Region Filter** to analyze specific regional performance.
2. Compare YoY trends using monthly visualizations.
3. Explore geographic sales distribution via map.
4. Identify high-performing categories and sub-categories.
5. Monitor operational efficiency using shipping and return metrics.

---

## Future Improvements

- Add Profit Margin analysis by category
- Implement customer retention metrics
- Add forecasting using Power BI built-in ML
- Create drill-through pages for deeper analysis
- Add contribution (%) metrics for better comparative insights
