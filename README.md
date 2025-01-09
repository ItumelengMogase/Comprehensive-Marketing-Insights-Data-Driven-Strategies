# Comprehensive Marketing Insights: Data-Driven Strategies for Revenue Optimisation


![Screenshot 2024-12-01 at 11-32-36 Dash](https://github.com/user-attachments/assets/8c7049f8-0f87-4157-b95b-fb9dde77a72b)


## Objective
This report provides insights and recommendations for the marketing team based on the analysis of sales data, product performance, and geographic breakdowns. The findings aim to support marketing strategies for improved revenue generation. The analysis leverages SQL and Python (Dash and Plotly) for data aggregation and visualisation.

---

## Data Overview
The dataset contains transactional information on products sold by a retail company across multiple categories. Key columns include:
- **ProductID**: Unique identifier for products.
- **Category**: Product category (e.g., Sports, Clothing, Home & Kitchen).
- **Price**: Price of the product sold.
- **QuantitySold**: Quantity of the product sold.
- **Revenue**: Total revenue from the sale.
- **CustomerLocation**: The city or region where the product was sold.
- **Date**: The date of the transaction.

The analysis was conducted using:
- **SQL**: For data aggregation and trend identification.
- **Python (Dash and Plotly)**: For visualisation and detailed trend analysis.

---

## Key Insights from SQL Analysis

### 1. Top Performing Products by Revenue
- SQL aggregated revenue by `ProductID`, identifying high-revenue products to target in marketing campaigns.

### 2. Monthly Sales Revenue
- Aggregated revenue by `Category` revealed seasonal trends, such as high sales in November and December due to holiday promotions.

### 3. Geographic Sales Breakdown
- Highlighted top-performing regions like New York, Los Angeles, and Chicago for focused marketing efforts.

---

## Key Insights from Python (Dash and Plotly) Analysis

### 1. Sales Over Time (Revenue Trends)
- Time-series charts showed a sales dip between March and May, with spikes in November and December.

### 2. Category Performance
- Pie charts revealed that **Clothing** and **Sports** are the top-performing categories, suggesting resource allocation for these areas.

### 3. Geographic Sales Distribution
- Interactive maps visualised revenue by location, enabling targeted regional strategies.

### 4. Revenue by Location
- Analysis of average revenue per location identified high-value regions and potential improvement areas.

---

## Comparison Between SQL and Python Analysis

| Aspect         | SQL Analysis                           | Python Analysis (Dash & Plotly)          |
|----------------|----------------------------------------|------------------------------------------|
| **Aggregation** | Static, pre-defined queries.           | Dynamic filtering and flexible insights. |
| **Visualisation** | No visualisation provided.            | Interactive graphs and maps.             |
| **Granularity**  | Limited to query design.              | Granular, real-time exploration.         |

Both approaches highlighted consistent trends, but Python offered richer, actionable visualisations.

---

## Recommendations for the Marketing Team

1. **Focus on High-Performing Categories**
   - Prioritise campaigns for **Clothing** and **Sports** categories based on their high revenue contribution.

2. **Leverage Peak Sales Periods**
   - Ramp up campaigns during November and December to align with peak sales periods.

3. **Regional Targeting**
   - Target cities like New York, Los Angeles, and Chicago for local promotions. Boost visibility in underperforming areas like San Jose.

4. **Product-Specific Campaigns**
   - Promote top-performing products through bundling deals or ads to maximise visibility and sales.

5. **Promote Lower-Performing Locations**
   - Introduce localised promotions or events to increase engagement in regions with lower sales.

6. **Interactive Reporting**
   - Use the Python dashboard for real-time monitoring of sales metrics and trends to support data-driven decisions.

---

## Conclusion

The combined analysis using SQL and Python provides valuable insights into product performance, sales trends, and geographic distribution. By focusing on high-performing products, peak sales periods, and specific regions, the marketing team can create targeted strategies to optimise revenue growth and drive effective campaigns.

---

## Tools Used
- **SQL**: For data aggregation and querying.
- **Python (Dash and Plotly)**: For visualisation and dynamic reporting.
- **Jupyter Notebook**: For exploratory data analysis, integration, and documentation.


Dash is running on http://127.0.0.1:8051/
