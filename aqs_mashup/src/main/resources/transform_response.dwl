%dw 1.0
%output application/java
---
payload map {
		(date: $."Date Local") when ($."Latitude") != "END OF FILE",
		(measure: $."Sample Measurement") when ($."Latitude") != "END OF FILE",
		(unit: $."Unit of Measure") when ($."Latitude") != "END OF FILE"
		}