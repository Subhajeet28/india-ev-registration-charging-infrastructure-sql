CREATE DATABASE EV_Analysis_India;
USE EV_Analysis_India;

CREATE TABLE ev_registrations (
    state_code CHAR(2) NOT NULL,
    state VARCHAR(60) NOT NULL,
    year INT NOT NULL,
    month INT NOT NULL,
    fuel_type VARCHAR(40) NOT NULL,
    registrations INT  NOT NULL,
    PRIMARY KEY (state_code, year, month, fuel_type)
);

CREATE TABLE  all_fuel_registrations (
    state_code CHAR(2) NOT NULL,
    state VARCHAR(60) NOT NULL,
    year INT  NOT NULL,
    month INT NOT NULL,
    fuel_type VARCHAR(40) NOT NULL,
    registrations INT NOT NULL,
    PRIMARY KEY (state_code, year, month, fuel_type),
    CHECK (month BETWEEN 1 AND 12)
);

CREATE TABLE  charging_stations (
    state VARCHAR(60) NOT NULL,
    snapshot_date DATE NOT NULL,
    stations_total INT NOT NULL,
    stations_fast INT NOT NULL,
    stations_slow INT NOT NULL,
    source_url VARCHAR(255),
    PRIMARY KEY (state, snapshot_date),
    CHECK (stations_total = stations_fast + stations_slow)
);


-- 1. How have total EV registrations changed annually from 2021 to 2025?
SELECT
    year,
    SUM(registrations) AS total_ev_registrations
FROM ev_registrations
WHERE year BETWEEN 2021 AND 2025
GROUP BY year
ORDER BY year;


-- 2. Which states recorded the highest EV registrations in 2025, and what share of total registrations did each contribute?
SELECT
    state,
    SUM(registrations) AS total_ev_registrations
FROM ev_registrations
WHERE year = 2025
GROUP BY state
ORDER BY total_ev_registrations DESC
LIMIT 10;


-- 3. What was the year-over-year growth rate of EV registrations from 2021 to 2025?
WITH yearly_ev AS (
    SELECT
        year,
        SUM(registrations) AS total_ev_registrations
    FROM ev_registrations
    WHERE year BETWEEN 2021 AND 2025
    GROUP BY year
),
previous_year AS (
    SELECT
        year,
        total_ev_registrations,
        LAG(total_ev_registrations) OVER (ORDER BY year) AS previous_year_registrations
    FROM yearly_ev
)
SELECT
    year,
    total_ev_registrations,
    previous_year_registrations,
    ROUND(
        (total_ev_registrations - previous_year_registrations)
        / NULLIF(previous_year_registrations, 0) * 100,
        2
    ) AS growth_percentage
FROM previous_year
ORDER BY year;


-- 4. Which states recorded the largest increase in EV registrations from 2024 to 2025?
WITH state_growth AS (
    SELECT
        state,
        SUM(CASE WHEN year = 2024 THEN registrations ELSE 0 END) AS registrations_2024,
        SUM(CASE WHEN year = 2025 THEN registrations ELSE 0 END) AS registrations_2025
    FROM ev_registrations
    WHERE year IN (2024, 2025)
    GROUP BY state
)
SELECT
    state,
    registrations_2024,
    registrations_2025,
    registrations_2025 - registrations_2024 AS absolute_increase,
    ROUND(
        (registrations_2025 - registrations_2024)
        / NULLIF(registrations_2024, 0) * 100,
        2
    ) AS growth_percentage
FROM state_growth
ORDER BY absolute_increase DESC;


-- 5. What percentage of total vehicle registrations were EV registrations in each state in 2025?
WITH ev_2025 AS (
    SELECT
        state,
        SUM(registrations) AS ev_registrations
    FROM ev_registrations
    WHERE year = 2025
    GROUP BY state
),
total_2025 AS (
    SELECT
        state,
        SUM(registrations) AS total_vehicle_registrations
    FROM all_fuel_registrations
    WHERE year = 2025
    GROUP BY state
)
SELECT
    e.state,
    t.total_vehicle_registrations,
    e.ev_registrations,
    ROUND(
        e.ev_registrations / NULLIF(t.total_vehicle_registrations, 0) * 100,
        2
    ) AS ev_penetration_percentage
FROM ev_2025 e
JOIN total_2025 t
    ON e.state = t.state
ORDER BY ev_penetration_percentage DESC;


-- 6. Which states had the most public EV charging stations, and what 	share were fast chargers?
SELECT
    state,
    stations_total,
    stations_fast,
    stations_slow,
    ROUND(stations_fast / stations_total * 100, 2) 
    AS fast_charger_percentage
FROM charging_stations
ORDER BY stations_total DESC;

-- 8. . Among the top 10 EV states in 2025, which had the lowest 	share of fast chargers?
WITH top_states AS (
    SELECT state,
	SUM(registrations) AS ev_registrations_2025
    FROM ev_registrations WHERE year = 2025
    GROUP BY state ORDER BY ev_registrations_2025 DESC
    LIMIT 10)
SELECT t.state, t.ev_registrations_2025,
c.stations_total,c.stations_fast,
ROUND(c.stations_fast / c.stations_total * 100, 2) 
AS fast_charger_percentage
FROM top_states t
JOIN charging_stations c
ON t.state = c.state
ORDER BY fast_charger_percentage;



