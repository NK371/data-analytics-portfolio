# Retail Store Sales Analysis using SQL

## Project Overview

This project simulates a real-world retail sales environment using a relational SQL database. The objective was to design a normalized schema, insert realistic transactional data, and perform business-focused analysis to generate actionable insights on revenue, customer behavior, product performance, and pricing strategies.

The project demonstrates strong SQL fundamentals combined with analytical thinking aligned with real retail business scenarios.

---

## Database Design & Data Modeling

Schema: [Schema Queries](retail_store_schema.sql)

Sample Data: [Data Insertion Queries](retail_store_insert_data.sql)

The database was designed using a normalized relational structure with proper constraints and referential integrity.

### Tables Created

#### Customers

- Stores customer details (name, email, city)
- Unique email constraint
- Primary key: `customer_id`

#### Products

- Product catalog with category classification
- Enforced price validation (`price > 0`)
- Primary key: `product_id`

#### Orders

- Stores order-level transactional data
- Linked to customers via foreign key
- Cascading delete ensures referential integrity
- Validates `total_amount >= 0`

#### Order_Items

- Resolves many-to-many relationship between Orders and Products
- Contains quantity and item-level selling price
- Enforces:
    - `quantity > 0`
    - `item_price >= 0`
- Restricts product deletion if referenced in orders

---

### Data Modeling Highlights

- Normalized structure (3NF)
- Foreign key constraints
- Cascading delete rules
- Data validation using CHECK constraints
- Separation of order header and line-item details
- Realistic retail simulation with:
    - Discounts
    - Free items
    - Repeat customers
    - Multi-category purchases

---

## Business Analysis Using SQL

All analytical queries: [Analytical Queries](retail_store_analysis_queries.sql)

The analysis was structured around core retail business questions.

---

### Revenue & Sales Performance

#### Total Revenue & Order Count

Calculated overall store performance using aggregate functions:

- `SUM(total_amount)`
- `COUNT(*)`

**Business Value:**  
Provides a high-level performance snapshot used in executive dashboards.

---

### Daily Sales Trend

Grouped revenue and order count by date to track daily sales movement.

**Business Value:**

- Identifies peak sales days
- Helps with staffing and inventory planning
- Enables trend-based forecasting

---

### Average Order Value (AOV)

Calculated using:

`SUM(total_amount) / COUNT(*)`

**Business Value:**

- Measures basket size
- Evaluates upselling effectiveness
- Supports revenue optimization strategies

---

## Product & Category Performance

### Product-Level Revenue & Quantity Sold

Joined `Order_Items` with `Products` to compute:

- Total quantity sold
- Total product revenue

**Business Value:**

- Identifies best-performing SKUs
- Supports inventory prioritization
- Enables margin analysis

---

### Top 5 Products by Revenue

Ranked products based on total revenue contribution.

**Business Value:**

- Highlights revenue-driving products
- Guides marketing focus
- Supports promotional planning

---

### Revenue by Category

Aggregated revenue and units sold per product category.

**Business Value:**

- Category portfolio analysis
- Shelf space optimization
- Expansion strategy decisions

---

## Customer Analytics

### Customer Lifetime Spend & Order Frequency

Calculated total orders and total spend per customer.

**Business Value:**

- Foundation for RFM segmentation
- Identifies loyal and high-value customers
- Supports retention campaigns

---

### Top 5 Customers by Spend

Ranked customers based on total purchase value.

**Business Value:**

- Enables VIP targeting
- Personalization strategies
- Loyalty program design

---

### Revenue by City

Aggregated total revenue by geographic location.

**Business Value:**

- Identifies high-performing regions
- Supports geo-targeted marketing
- Assists expansion planning

---

## Basket & Operational Insights

### Average Items per Order

Used a subquery to compute item count per order.

**Business Value:**

- Evaluates cross-selling effectiveness
- Supports bundling strategies
- Improves cart value optimization

---

### High-Value Orders (> 300)

Filtered premium transactions.

**Business Value:**

- Identifies bulk buyers
- Enables premium segmentation
- Useful for fraud detection analysis

---

### Invoice-Level Reporting

Generated a detailed line-item view of every order.

**Business Value:**

- Enables invoice generation
- Supports financial audits
- Improves transaction transparency

---

## Pricing & Discount Analysis

### Regular Price vs Actual Selling Price

Compared product MRP with average selling price.

**Insights Identified:**

- Discounting patterns
- Margin compression risk
- Promotional pricing impact

**Business Value:**

- Pricing optimization
- Promotion effectiveness analysis
- Margin protection strategy

---

### Free Item Detection (item_price = 0)

Identified products given as promotional giveaways.

**Business Value:**

- Tracks promotional leakage
- Evaluates campaign ROI
- Detects abnormal transactions

---

## SQL Concepts Demonstrated

- INNER JOIN (multi-table joins)
- GROUP BY & Aggregations
- Subqueries
- ORDER BY & LIMIT
- Data validation using CHECK constraints
- Foreign keys & cascading rules
- Ranking & filtering
- Business KPI calculations

---

## Key Analytical Capabilities Demonstrated

- Revenue analysis
- Customer segmentation
- Category performance evaluation
- Basket analysis
- Pricing strategy assessment
- Promotional impact analysis
- Geographic performance tracking

---

## How to Run This Project

1. Create the database.
2. Execute schema creation script.
3. Insert sample data.
4. Run analytical queries.
5. Modify data to test different retail scenarios.

---

## Future Enhancements

- Implement RFM segmentation
- Add window functions (ROW_NUMBER, RANK)
- Create views for dashboard-ready datasets
- Add indexing for query optimization
- Connect to Power BI or Tableau for visualization
- Implement profit margin calculations

---

## Conclusion

This project demonstrates my ability to:

- Design structured relational databases
- Maintain data integrity using constraints
- Write business-focused analytical SQL queries
- Translate raw transactional data into actionable insights

It reflects real-world retail analytics use cases including revenue tracking, customer segmentation, product performance analysis, and pricing strategy evaluation.
