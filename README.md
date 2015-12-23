# mulesoft-epa-demo

Project Overview
================

There are two MuleSoft projects included in this repository:

1. aqs_sites_api
This API demonstrates a systems API wrapping a database whose data is populated by the EPA AQS Site data, available here: http://aqsdr1.epa.gov/aqsweb/aqstmp/airdata/aqs_sites.zip
The API takes longitude/latitude co-ordinates as an input and returns a list of the nearby EPA Air quality measuring sites.

2. aqs_mashup
This API demonstrates a process API that:
- takes an address as a parameter
- converts it to longitude/latitude co-ordinates via the Google Geocode API (https://developers.google.com/maps/documentation/geocoding/intro)
- looks up the nearby sites using the aqs_sites API (provided in the other project)
- determines the closest measuring site
- requests ozone data for the prior 3 months from the EPA AQS data API (https://aqs.epa.gov/api)

Installation
-----------

In order to utilize the sites API project the SQL table needs to be created on a MySQL instance (or other DB instance if JDBC drivers are provided), the sql creation file "sites_table.sql" is under the src/main/resources folder.
Appropriate parameters should be defined within the "src/main/app/mule-app.properties" file for the database host, port.

A Google Geocode API key is required and can be obtained from: https://developers.google.com/maps/documentation/geocoding/get-api-key

Credentials for the EPA AQS Data API are required and can be obtained from: https://aqs.epa.gov/signup

Usage
-----

Import the projects "aqs_sites_api" & "aqs_mashup" into Mule Studio (available here: https://www.mulesoft.com/lp/dl/studio)
Highlight both projects and right-click, selecting "Run As.." -> "Run Configurations"
Make sure both projects are selected in the "projects to launch" pane and hit "Run"

The API Console for the mashup API is available here: http://localhost:8081/api/console/

The API Console for the sites API is available here: http://localhost:8082/api/console/
