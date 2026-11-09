# India EV Registration & Charging Infrastructure Analysis

### SQL Portfolio Project | MySQL

## Project Overview

This project explores electric vehicle (EV) registrations and public charging infrastructure across Indian states using MySQL.

I worked with EV registration data from 2021 to 2025 and a 2025 charging infrastructure snapshot to understand how EV adoption has changed over time, which states lead in registrations, and how charging infrastructure differs across regions.

The analysis focuses on eight questions covering registration trends, year-over-year growth, EV share of vehicle registrations, and charging-station distribution.

## Tools & SQL Concepts

- **Database:** MySQL
- **Data Analysis:** SQL
- **SQL techniques:** JOINs, CTEs, GROUP BY, aggregate functions, CASE WHEN, window functions (LAG), and percentage calculations

## Key Questions Explored

1. How have EV registrations changed from 2021 to 2025?
2. Which states recorded the highest EV registrations in 2025?
3. What was the year-over-year growth in EV registrations?
4. Which states recorded the largest increase between 2024 and 2025?
5. What percentage of new vehicle registrations were EVs in each state?
6. Which states had the most public charging stations, and what share were fast chargers?
7. Which states had the highest EV registrations per public charging station?
8. Among the top 10 EV-registration states, which had the lowest share of fast chargers?

## Key Findings

Based on the project datasets:

- EV registrations increased from approximately **3.3 lakh in 2021 to 21.8 lakh in 2025**.
- **Uttar Pradesh** recorded the highest EV registrations in 2025, followed by Maharashtra and Karnataka.
- **West Bengal** recorded the largest absolute increase in registrations between 2024 and 2025.
- **Tripura** had the highest EV share of new vehicle registrations at 18.35% in 2025.
- **Karnataka** had the highest number of public charging stations in the dataset, but only 12.32% were classified as fast stations.
- Some states recorded relatively high EV registrations per public charging station, suggesting areas worth investigating further.

## Database Structure

The project uses three tables:

| Table | Description |
|---|---|
| `ev_registrations` | State-wise EV registration records |
| `all_fuel_registrations` | Vehicle registrations across fuel categories |
| `charging_stations` | State-wise public charging infrastructure data |

## Repository Contents

- `india_ev_analysis_final.1` — SQL queries 

## Conclusion

Working on this project helped me practice SQL beyond basic queries and apply it to questions involving trends, growth, ranking, and comparisons.

It also showed me why looking at absolute registration numbers alone doesn't tell the full story. Comparing those figures with EV registration shares and charging infrastructure provides a more useful perspective on regional differences.
