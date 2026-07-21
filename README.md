# Sales KPI Dashboard


### Business Problem
Is sales growing, and where are the warning signs?<br>
This dashboard tracks sales data using five Key Performance Indicators, covering revenue growth and risk factors.
</br></br>

### KPIs Tracked

| KPI | What it measures | Why it matters |
|---|---|---|
| Revenue & Growth Rate | Change in revenue over time | Identifies trends, which is the answer for main business question |
| AOV | Average Value of customer's order | Improving AOV is one of the most effective ways to increase revenue |
| Discount Impact | How discounts affect sales volumes and revenues | Discounted items can increase sales volume, but it may not be enough to offset the lower margin |
| Return Rate | Percetange of orders returned by customers | Processing returns is not free and can have a big impact on revenue |
| Cohort Retention Rate | Returning clients within a set period of time | Helps to understand long term value of customer acquisition |

</br>


### Dataset
Dataset for this dashboard comes from Kaggle: [E-Commerce Customer Behavior & Sales 2020–2026](https://www.kaggle.com/datasets/meruvakodandasuraj/e-commerce-customer-behavior-and-sales-20202026)<br>
The tables `orders` and `customers` are the main data source. The dataset also includes two already aggregated tables, `monthly_revenue` and `product_summary`, which were used to compare the results of the SQL queries.
</br></br>

### Tools Used
- SQL (Postgresql) — data preparation, KPI calculations
- Power BI — interactive dashboard
</br></br>

### Methodology
Data Discovery → Quality Checks → KPI SQL Queries → Validation → Dashboard
<br>
- Data Discovery — analyzed structure and relations of main tables `orders` and `customers`
- Quality Checks — verified data types, NULLS and duplicates
- KPI SQL Queries — wrote five queries to calculate KPIs
- Validation — compared SQL querries results with data inside `monthly_revenue` and `product_summary` tables
- Dashboard — built Power BI interactive dashboard
</br></br>


### Key Insights
*(to be completed after analysis)*
</br></br>


### Dashboard Preview
*(to be completed after analysis)*
