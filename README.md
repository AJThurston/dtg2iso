# dtg2iso
Script for converting dates to and from military Date Time Group (DTG) to ISO 8601 format 

[Military Date Time Group Wikipedia](https://en.wikipedia.org/wiki/Date-time_group)   
[ISO 8601 Wikipedia](https://en.wikipedia.org/wiki/ISO_8601)  
  
  
## dtg2iso function
Converts dates from Military Date Time Group format (e.g., 110834FEB19R) to ISO8601 (e.g., 2019-02-11T08:34R).  Option to convert military time zone to UTC (e.g., 2019-02-11T08:34-5:00) with input UTC = TRUE (UTC = FALSE is default).

## iso2dtg function
Converts dates from ISO to DTG.  Here, the UTC option identifies if the ISO8601 date is UTC or military time zone, with UTC = FALSE as the default.
