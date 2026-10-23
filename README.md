# 🇪🇺 European Airbnb Market Analysis (Power BI & SQL)

An end-to-end data analytics and engineering project developed as part of my AI Training at **Instant Software Solutions** under the supervision of **Jana Hatem**. This project explores Airbnb pricing dynamics, geographical trends, and accommodation characteristics across 10 major European cities using a dataset of **51,707 records**.

---

## 🛠️ Data Architecture & Pipeline (Medallion Architecture)
Using **SQL Server**, data processing was structured into a three-layer Medallion architecture:
* **Bronze Layer:** Ingested and consolidated raw city-level datasets into a unified master table.
* **Silver Layer:** Cleaned data, handled missing values, and prepared features for analysis.
* **Gold Layer:** Modeled curated analytical tables focusing on city comparisons, room types, guest capacity, and weekday vs. weekend pricing trends.

A robust **Star Schema** (1 Fact Table + 3 Dimension Tables) was implemented to optimize Power BI performance.

---

## 📊 Power BI Dashboard Highlights
The interactive 2-page dashboard (designed with a modern dark-neon UI) includes:
* **Key Performance Indicators (KPIs):** Total listings (52K+), Average Price (€279.88), Weekend Premium %, and Price Per Person.
* **Pricing & Capacity Dynamics:** Comparing weekday vs. weekend price premiums and room distribution (`Entire home`, `Private room`, `Shared room`).
* **Geographical & Location Insights:** Analyzing the impact of proximity to city centers and metro stations on listing prices.
* **Interactive Filters:** Cleanliness ratings, room types, and city selectors.

---

## 💡 Tech Stack & Skills
* **Database & ETL:** SQL Server, T-SQL, Medallion Architecture, Star Schema, Data Validation.
* **Data Visualization:** Power BI, DAX Measures, Custom UI/UX Design.

---

## 📁 Repository Structure
* `/SQL_Scripts`: Contains all T-SQL scripts for the Bronze, Silver, and Gold layers.
* `/PowerBI`: Contains the interactive `.pbix` dashboard file.
* `/Screenshots`: Visual previews of the dashboard pages.

---
🚀 **Author:** Mohamed Essam
