%dw 1.0
%output application/json
---
payload map ((payload01 , indexOfPayload01) -> {
	"County Code": payload01."County Code",
	"Site Number": payload01."Site Number",
	"State Code": payload01."State Code",
	"Longitude": payload01."Longitude",
	"Latitude": payload01."Latitude"
})