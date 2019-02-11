dtg2iso <- function(x, UTC = F){
  paste(
    if(as.numeric(substr(x, 11,11)) <= 9 & as.numeric(substr(x, 11,11)) >=7) {paste(19,substr(x, 11, 12),sep="")}, #Year, appends 19 prefix
    if(as.numeric(substr(x, 11,11)) <= 6 & as.numeric(substr(x, 11,11)) >=0) {paste(20,substr(x, 11, 12),sep="")}, #Year, appends 20 prefix
    if(substr(x, 8, 10) == 'JAN'){"-01-"},
    if(substr(x, 8, 10) == 'FEB'){"-02-"},
    if(substr(x, 8, 10) == 'MAR'){"-03-"},
    if(substr(x, 8, 10) == 'APR'){"-04-"},
    if(substr(x, 8, 10) == 'MAY'){"-05-"},
    if(substr(x, 8, 10) == 'JUN'){"-06-"},
    if(substr(x, 8, 10) == 'JUL'){"-07-"},
    if(substr(x, 8, 10) == 'AUG'){"-08-"},
    if(substr(x, 8, 10) == 'SEP'){"-09-"},
    if(substr(x, 8, 10) == 'OCT'){"-10-"},
    if(substr(x, 8, 10) == 'NOV'){"-11-"},
    if(substr(x, 8, 10) == 'DEC'){"-12-"},
    substr(x, 1, 2),
    "T",
    substr(x, 3, 4),
    ":",
    substr(x, 5, 6),
    if(UTC == F) {substr(x, 7,7)},
    if(UTC == T & substr(x, 7,7) == 'A'){"+01:00"},
    if(UTC == T & substr(x, 7,7) == 'B'){"+02:00"},
    if(UTC == T & substr(x, 7,7) == 'C'){"+03:00"},
    if(UTC == T & substr(x, 7,7) == 'D'){"+04:00"},
    if(UTC == T & substr(x, 7,7) == 'E'){"+05:00"},
    if(UTC == T & substr(x, 7,7) == 'F'){"+06:00"},
    if(UTC == T & substr(x, 7,7) == 'G'){"+07:00"},
    if(UTC == T & substr(x, 7,7) == 'H'){"+08:00"},
    if(UTC == T & substr(x, 7,7) == 'I'){"+09:00"},
    if(UTC == T & substr(x, 7,7) == 'K'){"+10:00"},
    if(UTC == T & substr(x, 7,7) == 'L'){"+11:00"},
    if(UTC == T & substr(x, 7,7) == 'M'){"+12:00"},
    if(UTC == T & substr(x, 7,7) == 'N'){"-01:00"},
    if(UTC == T & substr(x, 7,7) == 'O'){"-02:00"},
    if(UTC == T & substr(x, 7,7) == 'P'){"-03:00"},
    if(UTC == T & substr(x, 7,7) == 'Q'){"-04:00"},
    if(UTC == T & substr(x, 7,7) == 'R'){"-05:00"},
    if(UTC == T & substr(x, 7,7) == 'S'){"-06:00"},
    if(UTC == T & substr(x, 7,7) == 'T'){"-07:00"},
    if(UTC == T & substr(x, 7,7) == 'U'){"-08:00"},
    if(UTC == T & substr(x, 7,7) == 'V'){"-09:00"},
    if(UTC == T & substr(x, 7,7) == 'W'){"-10:00"},
    if(UTC == T & substr(x, 7,7) == 'X'){"-11:00"},
    if(UTC == T & substr(x, 7,7) == 'Y'){"-12:00"},
    if(UTC == T & substr(x, 7,7) == 'Z'){"+00:00"},
      sep = "")
}


iso2dtg("2099-01-06T18:30R")

to

061830RJAN12

iso2dtg <- function(x,UTC = F){
    paste(
    substr(x, 9,10),
    substr(x, 12,13),
    substr(x, 15,16),
    if(UTC == F) {substr(x, 17,17)},
    if(UTC == T & substr(x, 17,22) == "+01:00") {"A"},
    if(UTC == T & substr(x, 17,22) == "+02:00") {"B"},
    if(UTC == T & substr(x, 17,22) == "+03:00") {"C"},
    if(UTC == T & substr(x, 17,22) == "+04:00") {"D"},
    if(UTC == T & substr(x, 17,22) == "+05:00") {"E"},
    if(UTC == T & substr(x, 17,22) == "+06:00") {"F"},
    if(UTC == T & substr(x, 17,22) == "+07:00") {"G"},
    if(UTC == T & substr(x, 17,22) == "+08:00") {"H"},
    if(UTC == T & substr(x, 17,22) == "+09:00") {"I"},
    if(UTC == T & substr(x, 17,22) == "+10:00") {"K"},
    if(UTC == T & substr(x, 17,22) == "+11:00") {"L"},
    if(UTC == T & substr(x, 17,22) == "+12:00") {"M"},
    if(UTC == T & substr(x, 17,22) == "-01:00") {"N"},
    if(UTC == T & substr(x, 17,22) == "-02:00") {"O"},
    if(UTC == T & substr(x, 17,22) == "-03:00") {"P"},
    if(UTC == T & substr(x, 17,22) == "-04:00") {"Q"},
    if(UTC == T & substr(x, 17,22) == "-05:00") {"R"},
    if(UTC == T & substr(x, 17,22) == "-06:00") {"S"},
    if(UTC == T & substr(x, 17,22) == "-07:00") {"T"},
    if(UTC == T & substr(x, 17,22) == "-08:00") {"U"},
    if(UTC == T & substr(x, 17,22) == "-09:00") {"V"},
    if(UTC == T & substr(x, 17,22) == "-10:00") {"W"},
    if(UTC == T & substr(x, 17,22) == "-11:00") {"X"},
    if(UTC == T & substr(x, 17,22) == "-12:00") {"Y"},
    if(UTC == T & substr(x, 17,22) == "+00:00") {"Z"},
    if(substr(x, 5, 8) == '-01-'){"JAN"},
    if(substr(x, 5, 8) == '-02-'){"FEB"},
    if(substr(x, 5, 8) == '-03-'){"MAR"},
    if(substr(x, 5, 8) == '-04-'){"APR"},
    if(substr(x, 5, 8) == '-05-'){"MAY"},
    if(substr(x, 5, 8) == '-06-'){"JUN"},
    if(substr(x, 5, 8) == '-07-'){"JUL"},
    if(substr(x, 5, 8) == '-08-'){"AUG"},
    if(substr(x, 5, 8) == '-09-'){"SEP"},
    if(substr(x, 5, 8) == '-10-'){"OCT"},
    if(substr(x, 5, 8) == '-11-'){"NOV"},
    if(substr(x, 5, 8) == '-12-'){"DEC"},
    substr(x, 3, 4),
        sep = "")
}


061830RJAN12



dtg2iso8601("061830RAUG99", UTC = F)

v = substr("061830RAUG98", 11, 12)
v = as.data.frame(as.numeric(v))

dates <- as.data.frame(c("1973-09-10T00:00A",
           "1977-11-23T01:00B",
           "1978-09-14T02:00C",
           "1980-04-24T03:00D",
           "1982-07-22T04:00E",
           "1985-12-11T05:00F",
           "1986-07-07T06:00G",
           "1986-08-14T07:00H",
           "1988-08-18T08:00I",
           "1988-08-25T09:00K",
           "1989-05-09T23:00L",
           "1990-01-11T23:00M",
           "1992-08-05T23:00N",
           "1994-02-23T01:00O",
           "1997-07-31T02:00P",
           "1998-08-31T00:00Q",
           "2001-02-16T00:00R",
           "2001-04-04T00:00S",
           "2001-09-13T00:00T",
           "2001-10-19T00:00U",
           "2008-07-08T00:00V",
           "2009-07-31T00:00W",
           "2010-10-07T00:00X",
           "2014-06-18T00:00Y",
           "2019-11-04T00:00Z"
))
colnames(dates) <- "dates"

iso2dtg(dates$dates)

dates$dates2 <- sapply(dates$dates, iso2dtg) 
dates$dates3 <- sapply(dates$dates2, dtg2iso) 
dates$datescheck <- dates$dates == dates$dates3
