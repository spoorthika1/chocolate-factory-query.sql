# chocolate-factory-query.sql
A comprehensive SQL analytics project for a chocolate factory. Features data modeling and advanced queries to track salesperson revenue, box shipments, regional performance, and monthly trends using Joins, CTEs, and Date functions.
# 🍫 Chocolate Factory Sales Analysis
<img width="1527" height="900" alt="Screenshot 2026-05-09 124743" src="https://github.com/user-attachments/assets/46d00aea-00a2-49bf-b140-6d9d3d9754cb" />


This project demonstrates a data-driven approach to managing a confectionery business's sales operations. Using SQL, I analyzed shipment logistics, product profitability, and salesperson performance across various geographical regions.
<img width="1885" height="1002" alt="Screenshot 2026-05-09 124645" src="https://github.com/user-attachments/assets/bd8f502f-f3bd-43f5-b2f2-3239fdf1255f" />

## 🗄️ Database Structure
The project is built around five relational tables:
* **Shipments / Shipments_New**: Detailed records of every delivery, including `Amount`, `Boxes`, and `Date`.
* **People**: Sales team data including `Sales Person` names and branch `Location`.
* **Products**: Product names and pricing details.
* **Geo**: Geographical mapping (Regions/Zones).
<img width="1625" height="750" alt="Screenshot 2026-05-09 124434" src="https://github.com/user-attachments/assets/5cb88dcd-40f1-4567-a461-0685545c06b2" />


## 🚀 Key Analysis Features
The SQL scripts included in this repository answer critical business questions:

### 1. Salesperson Performance
* Filtered performance tracking for specific team members (e.g., SP02, SP03, SP12).
* Aggregated total revenue and box counts by individual sales reps using `JOIN` and `GROUP BY`.
  <img width="1611" height="977" alt="Screenshot 2026-05-09 124927" src="https://github.com/user-attachments/assets/f7a55d29-208e-4453-89ab-4b9210e991a5" />


### 2. Shipping & Logistics
* Analysis of shipments by date ranges and specific months (January/February 2023).
* Calculation of efficiency metrics like **Amount per Box** to identify high-value orders.
* <img width="1625" height="750" alt="Screenshot 2026-05-09 124434" src="https://github.com/user-attachments/assets/480679eb-a5cc-4f6c-8a40-500b307586cd" />


### 3. Geographical Insights
* Segmenting sales data by region (e.g., Geo 'G3') and sorting by top revenue earners.

### 4. Advanced Data Retrieval
* Utilized `LIKE` operators for pattern matching (e.g., finding all 'Choco' products).
* Used `EXTRACT(YEAR_MONTH)` for time-series reporting.

## 🛠️ How to Run the Queries
1. Import the provided schema into your SQL environment (MySQL, PostgreSQL, etc.).
2. Run the `queries.sql` file to generate the performance reports.
