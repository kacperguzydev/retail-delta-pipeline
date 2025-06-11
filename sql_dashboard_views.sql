-- Databricks notebook source
CREATE OR REPLACE VIEW top_demand_products AS
SELECT *
FROM retail_kpis
ORDER BY avg_daily_demand DESC
LIMIT 10;

CREATE OR REPLACE VIEW promo_summary AS
SELECT promo_demand_level, COUNT(*) AS count
FROM retail_kpis
GROUP BY promo_demand_level;

CREATE OR REPLACE VIEW warehouse_open_status AS
SELECT is_open, COUNT(*) AS count
FROM retail_kpis
GROUP BY is_open;

CREATE OR REPLACE VIEW no_demand_products AS
SELECT *
FROM retail_kpis
WHERE avg_daily_demand = 0;

CREATE OR REPLACE VIEW demand_by_category AS
SELECT Product_Category, ROUND(AVG(avg_daily_demand), 1) AS avg_demand
FROM retail_kpis
GROUP BY Product_Category;