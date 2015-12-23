%dw 1.0
%output application/java
---
payload map ((payload01 , indexOfPayload01) -> {
	"State Code": payload01."State Code",
	"County Code": payload01."County Code",
	"Site Number": payload01."Site Number",
	("Latitude": payload01."Latitude") when (sizeOf payload01."Latitude") > 0,
	("Longitude": payload01."Longitude") when (sizeOf payload01."Longitude") > 0,
	"Datum": payload01."Datum",
	"Elevation": payload01."Elevation",
	"Land Use": payload01."Land Use",
	"Location Setting": payload01."Location Setting",
	"Site Established Date": payload01."Site Established Date",
	"Site Closed Date": payload01."Site Closed Date",
	"Met Site State Code": payload01."Met Site State Code",
	"Met Site County Code": payload01."Met Site County Code",
	"Met Site Site Number": payload01."Met Site Site Number",
	"Met Site Type": payload01."Met Site Type",
	"Met Site Distance": payload01."Met Site Distance",
	"Met Site Direction": payload01."Met Site Direction",
	"GMT Offset": payload01."GMT Offset",
	"Owning Agency": payload01."Owning Agency",
	"Local Site Name": payload01."Local Site Name",
	Address: payload01.Address,
	"Zip Code": payload01."Zip Code",
	"State Name": payload01."State Name",
	"County Name": payload01."County Name",
	"City Name": payload01."City Name",
	"CBSA Name": payload01."CBSA Name",
	"Tribe Name": payload01."Tribe Name",
	"Extraction Date": payload01."Extraction Date"
})