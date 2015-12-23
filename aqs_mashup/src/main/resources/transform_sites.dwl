%dw 1.0
%input payload application/json
%output application/java
---
payload map ({
	countyCode: padCounty($."County Code"),
	siteNumber: padSite($."Site Number"),
	stateCode: padState($."State Code"),
	distance: sqrt((((($."Longitude" as :number) - flowVars.origin.longitude)*(($.Longitude as :number) - flowVars.origin.longitude)) + ((($.Latitude as :number) - flowVars.origin.latitude)*(($.Latitude as :number) - flowVars.origin.latitude))))
})