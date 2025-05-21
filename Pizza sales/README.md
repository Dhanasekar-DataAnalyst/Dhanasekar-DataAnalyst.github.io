# 🍕 Pizza Sales Dashboard
### 📌 Introduction
Pizza is a globally loved comfort food, offering endless variations of crusts, sauces, cheeses, and toppings. Plato's Pizza, a Greek-inspired pizzeria in New Jersey, combines traditional Greek flavors with the universal appeal of pizza. Known for its fresh ingredients, homemade sauces, and signature Mediterranean twist, Plato's Pizza is a favorite among local customers.

This project presents a comprehensive sales analysis and dashboard visualization, helping the business make smarter, data-driven decisions.

### 🎯 Objective
The purpose of this dashboard is to provide a comprehensive overview of key business metrics such as:

- Daily and monthly sales

- Top-selling pizzas

- Customer preferences

- Order patterns

- Delivery performance

With real-time insights into operations and customer behavior, the dashboard supports better decisions in inventory planning, marketing, seating capacity, and overall business strategy.

### 🛠 Tools Used
- Microsoft Excel – Data cleaning and preparation

- Tableau Public – Interactive data visualization

### 📊 Part I – Data Analysis (Excel)
#### ✔️ Data Cleaning & Formatting:
The raw dataset was provided in CSV format. Key cleaning steps included:

- Converting date/time columns to proper formats

- Formatting prices as currency

- Standardizing column types for consistency and accuracy

#### 📁 Dataset Features:
- order_id – Unique order ID

- order_details_id – Unique line item within each order

- pizza_id – Key linking each pizza to its metadata

- quantity – Number of pizzas ordered

- order_date, order_time – When the order was placed

- unit_price: Price of one pizza (in USD)

- total_price: Computed as unit_price * quantity

- pizza_size: Pizza size (Small, Medium, Large, X Large, XX Large)

- pizza_type: Pizza type identifier

- pizza_ingredients: Ingredients (all include mozzarella & tomato sauce unless otherwise specified)

- pizza_name: Menu name of the pizza

### 📊 Part II: Data Visualization (Tableau)
Tableau was used to build interactive dashboards using:

- Bar Charts (vertical & horizontal)

- Pie Charts

- Cards (for KPIs)

- Filters (to slice the data by time or category)

These visualizations highlight trends in pizza sales, customer behavior, and operational metrics.

### 🔍 Key Insights
#### 💰 Revenue
- Annual Revenue: ~£0.82 million

- Monthly Average: ~£68,000

#### 📅 Busiest Day & Time
- Top Day: Friday

- Peak Hours: 12:00 PM – 2:00 PM

#### Monthly Trends:

- Early-week busy: March, June, November

- Midweek busy: April, September, October, December

#### 🍕 Popular Pizza Sizes
- Most Sold Sizes: Large (L) and Medium (M)

#### 🔝 Best-Selling Pizza
- Classic Deluxe Pizza (Small):

- ~5% of total sales

- ~5.3% of total revenue

#### 📉 Lowest-Selling Pizza
- Brie Care Pizza:

  - ~1% of total sales

  - ~1.4% of total revenue

#### 📈 Pizza Trends Over the Year
- H1 Leader: Barbecue Chicken Pizza

- H2 Leader: Thai Chicken Pizza (~1–2% higher revenue)
