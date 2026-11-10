# Dataset Information

## Overview

This project uses three datasets to analyze EV registrations and public charging infrastructure across Indian states.

## Datasets

| Dataset | Description | Period |
|---|---|---|
| EV Registrations | State-wise and monthly EV registrations | 2021–2025 |
| All Vehicle Registrations | State-wise vehicle registrations across fuel categories | 2025 analysis |
| Public Charging Stations | State-wise public charging station counts, including fast and slow stations | 2025 snapshot |


## Database Tables

The datasets were organized into three MySQL tables:

- `ev_registrations`
- `all_fuel_registrations`
- `charging_stations`

## Notes

- EV registrations are analyzed by year and state.
- Charging infrastructure is compared using a 2025 snapshot.
- Data coverage and source definitions should be checked before interpreting differences between states.

The SQL database structure and analysis queries are available in the `sql/` folder.
