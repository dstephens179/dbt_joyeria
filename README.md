Project Goal
<<<<<<< HEAD
This project pulls data from Google BigQuery where Google Sheets are linked as external tables. External tables are not using any space in BigQuery. The Sheets tables are updated daily automatically from each store. dbt is set up to run daily to automically to update the single, trusted data source.

Historical data and forecasts from R (forecast and sweep packages) are combined with the single data source.  Calculations are not included in dbt project, but externally calculated in RStudio.

Project Use This repo is public only for presentation purposes. Contributions are not preferred. Prerequisites are as follows:

Text editor (preferably VS Code)
RStudio
GCP access
Thanks! David