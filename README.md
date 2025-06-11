# 🛒 Retail Demand Forecasting – Databricks Project

This project is a complete data pipeline built in **Databricks Community Edition**.  
We take retail sales data and process it through 3 stages: **Bronze → Silver → Gold** using Delta Lake.

---

## 📂 Pipeline Overview

1. **Bronze** – Load raw CSV and save as Delta table  
2. **Silver** – Clean and enrich the data (e.g. stock left, rolling demand)  
3. **Gold** – Calculate KPIs (avg demand, promo effect, holiday flags)

---

## ✅ Tools Used

- Databricks (Community Edition)
- Spark
- Delta Lake
- Databricks SQL 

---

## 🔢 KPIs Generated

- `avg_daily_demand`
- `promo_demand_level`: High / Medium / Low
- `is_open`: Yes / No
- `had_school_holiday`: Yes / No
- `had_state_holiday`: Yes / No

---

## 📊 Dashboard Ideas

- Top 10 products by demand  
- Promo effectiveness summary  
- Open vs closed warehouses  
- No-demand products

---

## 📁 Files

| File | Description |
|------|-------------|
| `01_bronze_ingest.py` | Load raw CSV to Delta |
| `02_silver_transform.py` | Clean and add new features |
| `03_gold_kpis.py` | Calculate final KPIs |
| `04_sql_dashboard_views.sql` | Views for dashboards |
---

## 📦 Dataset

- Kaggle: [Retail Demand Forecasting](https://www.kaggle.com/datasets/rishavdash/retail-demand-forecasting-dataset)  
- ~170K rows of product-level sales and promo data

---

## ✅ Status

Project complete and working in Databricks CE.
