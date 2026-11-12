# SQL Scripts

This folder contains the MySQL script for **India EV Registration & Charging Infrastructure Analysis**.

## File

- [`india_ev_analysis_queries.sql`](india_ev_analysis_queries.sql) — Creates the three database tables and contains all eight analytical queries (Q1–Q8).

This is the actual filename in the repository. The schema and queries are kept in **one SQL file**, not in separate `01_schema.sql` or `02_analysis.sql` files.

## Database tables

| Table | Purpose |
|---|---|
| `ev_registrations` | Monthly state-wise EV registrations |
| `all_fuel_registrations` | Monthly state-wise registrations by fuel type |
| `charging_stations` | State-level charging-station counts with snapshot dates |

## SQL techniques

Aggregations, grouping and ordering, joins, conditional aggregation (`CASE`), common table expressions, `LAG()` window function, and percentage calculations.

## Running the project

1. Use a MySQL environment that supports CTEs and window functions (MySQL 8.0+).
2. Run the database and table-creation statements at the beginning of the script.
3. Load the corresponding source datasets into the three tables.
4. Run the eight analysis queries.


For findings and slides, see the [main README](../README.md) and [presentation](../presentation/India_EV_Infra_SQL_Portfolio.pdf).
