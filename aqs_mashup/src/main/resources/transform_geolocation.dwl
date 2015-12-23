%dw 1.0
%input payload application/json
%output application/java
---
{
	longitude: payload.results[0].geometry.location.lng,
	latitude: payload.results[0].geometry.location.lat
}