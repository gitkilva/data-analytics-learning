# Superstore Sales Performance Dashboard (Power BI)

## Overview
This project analyzes retail sales performance using the Superstore dataset to identify revenue trends, category performance, regional contribution, and profitability.

## Tools Used
- Power BI (DAX measures, visuals, slicers)
- SQL (aggregation, window functions)
- Excel (pivot validation)

## Key Business Insights
- Technology is the top-performing category by revenue and profit margin.
- Revenue shows seasonality with a strong peak around November and a drop in January.
- West region contributes the highest revenue, while South underperforms.
- Pareto analysis shows revenue concentration: top customers contribute a large share of total revenue (dependency risk).

## What I Built
- Executive Summary dashboard with KPI cards and trend visuals
- Deep Dive page for category/region/product performance
- Pareto (80/20) customer concentration analysis
- Metric definitions + validation checks to avoid inflated totals

## Validation
Cross-validated Power BI totals with Excel pivots and used grain-awareness (order-line level) to prevent incorrect aggregations.
