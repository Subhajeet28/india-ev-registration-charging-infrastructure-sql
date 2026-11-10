# India EV Registration & Charging Infrastructure Analysis

**SQL Portfolio Project | MySQL | India | 2021–2025**

## Project Overview

This project explores electric vehicle (EV) registrations and public charging infrastructure across Indian states using MySQL.

The aim was to understand how EV registrations have changed over time, identify states leading in EV adoption, and compare registration patterns with the distribution of public charging stations.

The analysis covers eight business-oriented questions using state-level registration data from 2021–2025 and a 2025 charging infrastructure snapshot.

## Tools & SQL Skills

- **Database:** MySQL
- **Data Analysis:** SQL
- **Techniques:** JOINs, CTEs, GROUP BY, CASE WHEN, aggregate functions, window functions (`LAG()`), percentage calculations
- **Database Design:** Primary keys and constraints

## Key Findings

- EV registrations increased from approximately **3.3 lakh in 2021 to 21.8 lakh in 2025**.
- Uttar Pradesh recorded the highest EV registrations in 2025.
- West Bengal recorded the largest absolute increase in registrations between 2024 and 2025.
- Tripura had the highest EV share of new vehicle registrations at **18.35%**.
- Karnataka recorded the highest number of public charging stations in the analyzed data, although only **12.32%** were classified as fast charging stations.
- Registration volumes and EV registration shares varied considerably across states.

## Analysis Covered

1. Annual EV registration trends (2021–2025)
2. Top 10 states by EV registrations
3. Year-over-year registration growth
4. State-wise growth between 2024 and 2025
5. EV share of total vehicle registrations
6. Public charging infrastructure and fast charging share
7. EV registrations per public charging station
8. Fast-charging comparison among leading EV states

## Database Structure

The analysis uses three tables:

| Table | Description |
|---|---|
| `ev_registrations` | State-level EV registrations |
| `all_fuel_registrations` | Vehicle registrations across fuel types |
| `charging_stations` | State-level public charging infrastructure |

## Repository Structure

- `sql/` — Database schema and analytical SQL queries
- `data/` — Dataset documentation and source information
- `presentation/` — Project presentation containing queries, results, and findings

## Data Sources

Original data-source links, reporting coverage, and charging infrastructure snapshot dates are to be confirmed in `data/README.md`.

## Limitations

The analysis uses registration data and a charging infrastructure snapshot. EV registrations per public charging station provide a comparative indicator, not a direct measure of station utilization, demand, or infrastructure shortages.

## What I Learned

This project helped me apply SQL concepts to real analytical questions, particularly year-over-year growth calculations, state-level comparisons, and combining datasets to explore patterns.

It reinforced the importance of looking beyond absolute numbers when interpreting data.
