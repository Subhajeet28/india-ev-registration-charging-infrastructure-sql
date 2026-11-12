# Dataset Information

## Overview

The project analyzes EV registrations and public charging infrastructure across Indian states. It uses three MySQL tables, but **the source CSV/data files are not currently published in this repository**.

## Datasets

| Dataset / SQL table | Description | Coverage stated in project |
|---|---|---|
| `ev_registrations` | State-wise monthly EV registrations | 2021–2025 |
| `all_fuel_registrations` | State-wise monthly vehicle registrations by fuel type | Used for the 2025 EV-share analysis |
| `charging_stations` | State-wise counts of public charging stations, including fast and slow categories | 2025 snapshot |

## Source details still to confirm

- **EV registrations:** Original source title and URL not yet documented.
- **All-fuel registrations:** Original source title and URL not yet documented.
- **Public charging stations:** Original source title and URL not yet documented.
- **Charging snapshot date:** Exact date not yet confirmed.
- **Reporting coverage:** State/UT coverage, completeness of 2025, and any exclusions should be verified.
- **Definitions:** Confirm that fast/slow counts are mutually exclusive stations, and clarify whether station counts refer to sites or individual charging points.

No source URLs or snapshot dates have been invented for this documentation.

## Reproducing the analysis

The database structure and queries are in [`../sql/india_ev_analysis_queries.sql`](../sql/india_ev_analysis_queries.sql). The script creates tables but does **not** import data automatically. To reproduce the reported outputs, readers would need the source datasets and their preparation/import steps, which are not yet available here.

## Interpretation notes

The ratio of annual EV registrations to public charging stations is a **comparison metric**, not a direct measure of charger use, EV fleet size, charging demand, or infrastructure shortage. Registration counts are new registrations during the period, rather than the number of EVs in active use.
