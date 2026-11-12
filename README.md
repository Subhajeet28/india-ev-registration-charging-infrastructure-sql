# India EV Registration & Charging Infrastructure Analysis

**SQL Portfolio Project | MySQL | India | 2021–2025**

## Project Overview

This project explores electric vehicle (EV) registrations and public charging infrastructure across Indian states using MySQL.

The aim was to understand how EV registrations have changed over time, identify states leading in EV adoption, and compare registration patterns with the distribution of public charging stations.

The analysis covers eight questions using state-level EV registration data from 2021–2025 and a 2025 charging infrastructure snapshot.

## Tools & SQL Skills

- **Database:** MySQL
- **Techniques:** `JOIN`, `GROUP BY`, common table expressions (CTEs), `CASE WHEN`, aggregate functions, the `LAG()` window function, and percentage calculations
- **Database design:** Primary keys and constraints

## Analysis Covered

1. Annual EV registration trends (2021–2025)
2. Top 10 states by EV registrations in 2025
3. Year-over-year growth in registrations
4. State-wise registration changes from 2024 to 2025
5. EV share of total vehicle registrations by state
6. Public charging stations and fast-charging share
7. EV registrations per public charging station
8. Fast-charging share among the top 10 EV-registration states

## Key Findings

*The figures below are reported in the project presentation and have not been independently reproduced from raw data in this repository.*

- EV registrations increased from approximately **3.3 lakh in 2021 to 21.8 lakh in 2025**.
- **Uttar Pradesh** recorded the highest EV registrations in 2025.
- **West Bengal** recorded the largest absolute increase in registrations between 2024 and 2025.
- **Tripura** had the highest EV share of new vehicle registrations at **18.35%**.
- **Karnataka** had the most public charging stations in the analyzed snapshot, although only **12.32%** were classified as fast-charging stations.
- Registration volumes, EV shares, and charging-station availability varied across states.

## Database Structure

The project uses three tables:

| Table | Description |
|---|---|
| `ev_registrations` | State-wise, monthly EV registration records |
| `all_fuel_registrations` | State-wise vehicle registrations across fuel types |
| `charging_stations` | State-wise public charging-station counts and snapshot dates |

## Repository Files

| File | Contents |
|---|---|
| [SQL analysis script](sql/india_ev_analysis_queries.sql) | Database schema and all eight analytical queries in one `.sql` file |
| [SQL documentation](sql/README.md) | Query overview and instructions for using the SQL script |
| [Dataset documentation](data/README.md) | Dataset descriptions, coverage, and missing source details |
| [Project presentation (PDF)](presentation/India_EV_Infra_SQL_Portfolio.pdf) | 13-slide overview with queries, results, and findings |
| [Presentation notes](presentation/README.md) | Context and interpretation notes for the PDF |

## Data Sources & Reproducibility

The repository currently **does not include the source datasets or data-import instructions**. The original data-source URLs, precise charging-station snapshot date, and full reporting coverage have not yet been confirmed.

See [Dataset Information](data/README.md) for the current documentation status. To reproduce the results, the underlying data must first be loaded into the tables defined in the SQL script.

## Limitations

- EV registrations measure new registrations during the reporting period, not the total number of EVs in operation.
- Registrations per public charging station are a comparative indicator, **not** a direct measure of charging-station utilization, demand, or infrastructure shortages.
- The charging-station queries in the uploaded SQL script do not filter on `snapshot_date`; their interpretation depends on the snapshot data loaded into the table.
- Without the underlying datasets, the reported output values cannot be independently validated from this repository alone.

## What I Learned

This project helped me use SQL to explore trends, calculate year-over-year growth, compare states, and connect registration patterns with charging infrastructure data.

It also reinforced why looking beyond absolute registration counts matters: EV share and charging-station distribution can tell a different story from registration volume alone.
