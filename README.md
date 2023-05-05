# ThesisFishForSex


Workflow
- ShocksFishPriceWeight is used to identify price shocks from World Food Program Data and weight shocks from Statistical Reports (Ministry of Livestock and Fisheries- see reports). The output is a table gives the price/weight captured, and a set of booleans for whether the entry is a shock month for every region/district-month. These tables are uploaded to google bigquery
- Scraping_MOH.rmd contains script used to collect health data from Ministry of Health Tanzania's Health Portal (https://hmisportal.moh.go.tz/)
- These indicators are then uploaded to google bigquery database, and "SQLcompletejoin.sql" is used to convert to long panel, remove missing data, join with facility information including distance from the lakeshore by facility UID, and join with fish price shocks and maize prices. For weight shocks, these long panels are instead joined by district with weight shocks
