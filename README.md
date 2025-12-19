🚖 OLA Ride Booking Analysis | SQL & Power BI
📊 Business Intelligence & Data Analytics Project
🔍 Overview

This project delivers an end-to-end data analytics solution for OLA ride booking data using SQL (MySQL) and Power BI.
The analysis focuses on booking performance, revenue trends, customer behavior, cancellation reasons, and service quality metrics, enabling data-driven decision-making for operations and growth.

🎯 Business Problem

Ride-hailing platforms face challenges such as:

High ride cancellations

Uneven vehicle performance

Revenue leakage across payment methods

Inconsistent customer and driver ratings

This project addresses these challenges by transforming raw booking data into actionable insights.

🧠 Key Skills Demonstrated

SQL (MySQL): Data cleaning, aggregation, joins, filtering

Power BI: Interactive dashboards, DAX measures, KPIs

Data Analysis: Trend analysis, customer segmentation, performance metrics

Business Intelligence: Insight generation & reporting

Data Visualization: Storytelling with dashboards

🗂 Dataset Summary

The dataset includes:

Booking ID, Customer ID

Booking status (Success, Cancelled, Incomplete)

Vehicle types (Prime Sedan, SUV, Auto, Bike, etc.)

Booking value & ride distance

Payment methods (Cash, UPI, Card)

Cancellation reasons (Customer & Driver)

Customer and driver ratings

📌 KPIs & Metrics Analyzed

Total bookings & successful rides

Cancellation rate (%)

Revenue by payment method

Average ride distance by vehicle type

Driver & customer rating trends

Top customers by ride volume

📊 Dashboard Highlights (Power BI)

Overall Performance Dashboard

Total bookings, revenue, cancellation rate

Vehicle Type Analysis

Revenue, success rate, distance travelled

Revenue Insights

Payment method comparison & trends

Cancellation Analysis

Driver vs customer cancellation reasons

Ratings Analysis

Average driver & customer ratings by vehicle

🧪 Sample SQL Queries
-- Successful bookings
SELECT *
FROM bookings
WHERE booking_status = 'Success';

-- Top 5 customers by ride count
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

-- Total revenue from successful rides
SELECT SUM(Booking_Value) AS total_revenue
FROM bookings
WHERE booking_status = 'Success';

📈 Key Business Insights

Cash and UPI dominate payment methods, contributing the majority of revenue

Driver-related issues are a major cause of cancellations, highlighting operational gaps

Certain vehicle types consistently outperform others in revenue and ratings

Repeat customers contribute significantly to booking volume

🗃 Project Structure
├── SQL/
│   └── ola_queries.sql
├── PowerBI/
│   └── ola_dashboard.pbix
├── Dataset/
│   └── ola_bookings.csv
├── Images/
│   └── dashboard_preview.png
└── README.md

🚀 Impact

Improved visibility into booking success & cancellation drivers

Identified revenue-generating customer segments

Enabled data-backed operational recommendations

Demonstrated real-world BI & analytics workflow

🔮 Future Enhancements

Predictive modeling for ride cancellation

Customer segmentation using clustering

Time-series forecasting for ride demand

Real-time dashboard integration





