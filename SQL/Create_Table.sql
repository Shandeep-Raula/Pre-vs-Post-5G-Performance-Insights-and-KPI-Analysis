CREATE TABLE dim_cities (
    city_code VARCHAR PRIMARY KEY,
    city_name VARCHAR NOT NULL
);


CREATE TABLE dim_date (
    date DATE PRIMARY KEY,
    month_name VARCHAR(3) NOT NULL,
    before_after_5g VARCHAR(10) CHECK (before_after_5g IN ('Before 5G', 'After 5G')),
    time_period INTEGER CHECK (time_period BETWEEN 1 AND 4)
);


CREATE TABLE dim_plan (
    plan VARCHAR PRIMARY KEY,
    plan_description TEXT
);


CREATE TABLE fact_atliqo_metrics (
    date DATE REFERENCES dim_date(date),
    city_code VARCHAR REFERENCES dim_cities(city_code),
    company VARCHAR NOT NULL,
    atliqo_revenue_crores NUMERIC(10,2),
    arpu NUMERIC(10,2),
    active_users_lakhs NUMERIC(10,2),
    unsubscribed_users_lakhs NUMERIC(10,2),
    PRIMARY KEY (date, city_code, company)
);


CREATE TABLE fact_market_share (
    date DATE REFERENCES dim_date(date),
    city_code VARCHAR REFERENCES dim_cities(city_code),
    tmv_city_crores NUMERIC(10,2),
    company VARCHAR NOT NULL,
    ms_pct NUMERIC(5,2),
    PRIMARY KEY (date, city_code, company)
);


CREATE TABLE fact_plan_revenue (
    date DATE REFERENCES dim_date(date),
    city_code VARCHAR REFERENCES dim_cities(city_code),
    plans VARCHAR REFERENCES dim_plan(plan),
    plan_revenue_crores NUMERIC(10,2),
    PRIMARY KEY (date, city_code, plans)
);


-- View dim_cities
SELECT * FROM dim_cities;

-- View dim_date
SELECT * FROM dim_date;

-- View dim_plan
SELECT * FROM dim_plan;

-- View fact_atliqo_metrics
SELECT * FROM fact_atliqo_metrics;

-- View fact_market_share
SELECT * FROM fact_market_share;

-- View fact_plan_revenue
SELECT * FROM fact_plan_revenue;

