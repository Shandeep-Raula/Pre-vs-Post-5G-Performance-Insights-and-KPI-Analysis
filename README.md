# Pre Vs. Post 5G Performance Insights and KPI Analysis
__Domain__:  Telecom          
__Function__: Executive Management

## Understanding the Business Persona
After launching 5G in May 2022, the company saw a drop in active users and slower revenue growth. Management wants to compare key metrics from before and after the 5G launch to understand what went wrong. They aim to find insights and improve their internet plans to bring back users and boost growth.


## Project Goals
- Compare KPIs before and after the 5G launch to measure performance changes.
- Identify reasons behind the drop in active users and revenue growth.
- Uncover trends and patterns in user behavior post-5G launch.
- Evaluate the effectiveness of current internet plans.
- Suggest data-driven strategies to recover user engagement and improve revenue.

## Table Schema
![](https://github.com/Shandeep-Raula/Post-5G-Performance-Insights-and-KPI-Analysis/blob/main/Figure/Data%20Model.png)

## Identify the Key Performance Indicators (KPI’s)
| **Metric**                   | **Alias** | **Description**                                                   |
| ---------------------------- | --------- | ----------------------------------------------------------------- |
| Total Revenue                | –         | Sum of Atliqo Revenue                                             |
| Avg Revenue                  | –         | Average revenue of Atliqo                                         |
| Average Revenue Per User     | ARPU      | Average of ARPU                                                   |
| Total Active Users           | –         | Sum of active users of Atliqo                                     |
| Total Unsubscribed Users     | –         | Sum of unsubscribed users of Atliqo                               |
| Monthly Active Users         | –         | Average of active users per month                                 |
| Market Share %               | MS %      | Average of `ms_pct` (market share percentage)                     |
| Revenue Before 5G            | –         | Total revenue for all periods before 5G implementation            |
| Revenue After 5G             | –         | Total revenue for all periods after 5G implementation             |
| ARPU Before 5G               | –         | ARPU of periods before 5G implementation                          |
| ARPU After 5G                | –         | ARPU of periods after 5G implementation                           |
| Active Users Before 5G       | –         | Total active users for all periods before 5G implementation       |
| Active Users After 5G        | –         | Total active users for all periods after 5G implementation        |
| Unsubscribed Users Before 5G | –         | Total unsubscribed users for all periods before 5G implementation |
| Unsubscribed Users After 5G  | –         | Total unsubscribed users for all periods after 5G implementation  |

## Tools 
- SQL (PostgreSQL)
- Python For EDA
```
pip install numpy pandas matplotlib seaborn plotly 
```

## Insights Deep-Dive 

#### 📊 Unsubscribed Users Insights (in Lakhs) by City & Month
![](https://github.com/Shandeep-Raula/Pre-vs-Post-5G-Performance-Insights-and-KPI-Analysis/blob/main/Figure/Unsubscribed%20Users%20(in%20Lakhs)%20by%20City%20%26%20Month.png)

This analysis summarizes unsubscribe trends across major Indian cities from January to September 2022.
- 📍 **Delhi** consistently has **high unsubscribe rates**, peaking in:
  - **March 2022**: `2.52 lakhs`
  - **August 2022**: `2.37 lakhs`

- 🔺 **Jaipur** recorded the **highest overall peak**:
  - **August 2022**: `3.57 lakhs` unsubscribed users

- 🌆 **Kolkata** and **Mumbai** exhibit multiple spikes:
  - **Mumbai (April 2022)**: `2.64 lakhs`
  - Notable activity across **mid-2022**

- 🟢 **Chandigarh**, **Raipur**, and **Pune** consistently show **lower unsubscribe numbers** throughout the period.

- 📈 **Most spikes occurred from mid to late 2022**, possibly driven by:
  - Seasonal churn
  - Marketing campaign changes
  - Service-related issues
