# THE PIZZA SALES DASHBOARD

### INTRODUCTION:
Pizza is one of the most beloved and universally enjoyed foods around the world. Originating from Italy, this iconic dish has evolved into countless varieties, reflecting local tastes and cultures. With its perfect blend of crispy crust, rich tomato sauce, melted cheese, and endless topping options, pizza offers something for everyone. Whether served at casual gatherings, family dinners, or gourmet restaurants, pizza continues to be a favourite comfort food and a symbol of culinary creativity. 
Plato's Pizza is a Greek-inspired pizza place located in New Jersey, offering a unique fusion of traditional Greek flavours with the classic appeal of pizza. Known for its fresh ingredients, homemade sauces, and signature Mediterranean twists.

### OBJECTIVE:
The objectives of dashboard provide a comprehensive overview of key business metrics to help monitor and improve performance. Designed to assist owners and managers in making data-driven decisions, this dashboard visualizes critical information such as daily sales, top-selling pizzas, customer preferences, order trends, and delivery performance. With real-time insights into operational efficiency and customer behaviour, the dashboard enables better inventory planning, marketing strategies, and overall business growth.

### Tools used:
•	Microsoft Excel
•	Tableau public

### Part – I:
#### Analysing Given data:
The data used in the analytical process is obtained in CSV format. Data cleaning is a critical step to ensure accuracy and a clearer understanding of the information. Using Microsoft Excel, various data types are appropriately formatted—for example, converting order dates to the date-only format, transforming decimal values to time in the order time column, and changing price-related columns to currency format. Proper data cleaning is essential and should always be validated to maintain the integrity of the analysis.

#### About Data:
•	order_id: Unique identifier for each order placed by a table
•	order_details_id: Unique identifier for each pizza placed within each order (pizzas of the
•	same type and size are kept in the same row, and the quantity increases)
•	pizza_id: Unique key identifier that ties the pizza ordered to its details, like size and price
•	quantity: Quantity ordered for each pizza of the same type and size
•	order_date: Date the order was placed (entered into the system prior to cooking & serving)
•	order_time: Time the order was placed (entered into the system prior to cooking & serving)
•	unit_price: Price of the pizza in USD
•	total_price: unit_price * quantity
•	pizza_size: Size of the pizza (Small, Medium, Large, X Large, or XX Large)
•	pizza_type: Unique key identifier that ties the pizza ordered to its details, like size and price
•	pizza_ingredients: ingredients used in the pizza as shown in the menu (they all include
•	Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce
•	is specified)
•	pizza_name: Name of the pizza as shown in the menu

### Part – II:
#### Data Visualization
Tableau is a powerful data visualization tool that enables users to represent data in an intuitive and interactive visual format. By using charts (such as vertical and horizontal bar charts, pie charts), filters, and cards, users can explore relationships between dependent and independent variables. Filtering relational data on a dashboard helps in identifying trends, patterns, and the impact of various factors on business performance. (Fig 1 & 2 shows the dashboard in image format)

![Pizza_sales_dashboard_complete](https://github.com/user-attachments/assets/7e53b3af-b7ec-4c07-afe8-2d66189f09c6)


### Key Insights
	Annual and Monthly Revenue: The business generates approximately £0.82 million annually, with an average monthly revenue of around £68,000.
	Busiest Day and Time:
	Friday records the highest order volume.
	Peak order time is between 12:00 PM and 2:00 PM.
	Weekends are generally the busiest, though peak days vary by month:
	March, June, and November: Early-week days are busiest.
	April, September, October, and December: Midweek days see the most activity.
	Popular Pizza Sizes:
	Large (L) and Medium (M) sizes are the most frequently sold.
	Top-Selling Pizza Category:
	Classic pizzas dominate sales, with Classic Deluxe Pizza (Small) being the best-seller.
	This pizza accounts for approximately 5% of total sales and 5.3% of total revenue.
	Lowest-Selling Pizza:
	Brie Care Pizza has the lowest demand, contributing about 1% of total sales and 1.4% of total revenue.
	Pizza Performance Over the Year:
	In the first half of the year, Barbecue Chicken Pizza leads in revenue.
	In the second half, Thai Chicken Pizza slightly outperforms it, with a revenue difference of around 1–2%.
	Customer Volume and Seating Recommendation:
	On average, 30–40 customers place orders daily.
	It is recommended to place 7 tables with 34 chairs, including 2 larger tables joined to accommodate group seating, for better customer comfort.
	Operational Recommendations:
	Given that noon is the peak time, efficient air conditioning should be maintained to ensure comfort.
	An adequate number or capacity of ovens should be installed to minimize wait times and ensure timely order delivery.
	Reviews and ratings:
	Adding a review and rating system to the order allows customers to share their thoughts on the food they had. Allocating space for sticky notes for one quarter would be a great starting point to assess the impact of this process. In today's world, websites and apps are commonly used to collect customer reviews. These platforms could be a better option if the process proves successful in the first quarter.



 
Conclusion:
	The insights gained from the exploratory analysis of the given dataset can significantly enhance the business of the pizza shop (from which the data was obtained). Data-driven decisions are typically accurate about 80-90%. However, other factors may influence these decisions. Nonetheless, interpreting the data effectively will yield the desired results from the analysis.

