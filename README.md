**Customer Shopping Behavior Analysis**

An end-to-end data analytics project examining 3,900 customer transactions to uncover spending patterns, customer demographics, and subscription behavior. The project leverages Python for data cleaning and feature engineering, PostgreSQL/MySQL for SQL-based business querying, and Power BI for interactive dashboard visualization.   

📌 Project Architecture & Workflow

Data Cleaning & Preprocessing (Python / Pandas):
Handled missing values in review_rating using category-level median imputation.   
Standardized column names to snake_case.   
Created age bins (age_group) and purchase frequency categories.   
Evaluated feature redundancy between discount_applied and promo_code_used.   

Database Integration & Querying (SQL):

Loaded processed data into a relational database using SQLAlchemy and PyMySQL / psycopg2.  
Evaluated key business metrics including revenue by gender, customer loyalty segmentation, discount dependency, and subscription conversion rates.

Data Visualization (Power BI):

Designed an interactive multi-page dashboard showcasing KPIs (Total Customers, Average Purchase Amount, Average Review Rating).
Built dynamic visualizations for revenue distribution across age groups, product categories, and shipping preferences.


📊 Business Key Performance Indicators (KPIs)
Total Customers Analyzed: 3,900   
Average Purchase Amount: $59.76   
Average Review Rating: 3.75 / 5.0   
Subscription Breakdown: 27% Subscribed | 73% Non-Subscribed

🛠️ Tech Stack & ToolsLanguage: 
Python 3.14Libraries: Pandas, NumPy, SQLAlchemy,PyMySQL, urllib.parse   
Database: MySQL / PostgreSQL  
Visualization: Power BI
DesktopIDE: Visual Studio Code (Jupyter Notebook environment)

💡 Key Insights & Business Recommendations

Subscription Growth:Non-subscribers generate 73% of overall revenue, presenting a strong opportunity for targeted conversion strategies.
Customer Loyalty: Over 80% of purchasers fall into the "Loyal" segment (repeat buyers), indicating high customer retention potential.
Category Performance: Clothing and Accessories represent the primary revenue-generating categories across all age groups.
Discount Sensitivity: High-margin products like Coats and Sweaters show high discount dependency (>48%), requiring optimized promotion policies.
