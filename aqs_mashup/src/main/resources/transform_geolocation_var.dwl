%dw 1.0
%output application/java
---
{
	longitude: payload.results[0].geometry.location.lng as :number,
	latitude: payload.results[0].geometry.location.lat as :number
}