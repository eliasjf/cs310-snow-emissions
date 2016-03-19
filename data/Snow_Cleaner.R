## 
## I'll just whip up some plots of the Snowpack data...
## Just for shits and giggles...
##





region_classifier <- function(survey.locn) {
  
  surv <- as.character(survey.locn)
  
  switch( surv, 
          
          'LONGWORTH (UPPER)' ={return('Fraser-Fort George')},
          'HEDRICK LAKE' ={return('Fraser-Fort George')},
          'KNUDSEN LAKE' ={return('Fraser-Fort George')},
          'CHAR CREEK' ={return('Central Kootenay')},
          'MONKMAN CREEK' ={return('Fraser-Fort George')},
          'PACIFIC LAKE' ={return('Fraser-Fort George')},
          'PINE PASS'	={return('Peace River')},
          'MORFEE MOUNTAIN'	={return('Fraser-Fort George')},
          'MOUNT SHEBA'	={return('Fraser-Fort George')},
          'FORBIDDEN PLATEAU'	={return('Comox Valley')},
          'ELK RIVER'	={return('Kootenay')},
          'WOLF RIVER (MIDDLE)' ={return('Strathcona')},
          'WOLF RIVER (LOWER)' ={return('Strathcona')},
          'LADY LAURIER' ={return('LAKE	Peace River')},
          'MOUNT STEARNS'	={return('Peace River')},
          'WARE (UPPER)'	={return('Peace River')},
          'WARE (LOWER)'	={return('Peace River')},
          'PULPIT LAKE'	={return('Peace River')},
          'TRYGVE LAKE'	={return('Peace River')},
          'HUDSON BAY MTN.'	={return('Bulkley-Nechako')},
          'SIKANNI LAKE'	={return('Peace River')},
          'FREDRICKSON LAKE'	={return('Peace River')},
          'JOHANSON LAKE'	={return('Kitimat-Stikine')},
          'TERRACE AIRPORT'	={return('Kitimat-Stikine')},
          'KAZA LAKE'	={return('Kitimat-Stikine')},
          'FARRON'	={return('Kootenay')},
          'ORCHID LAKE'	={return('Greater Vancouver')},
          'GERMANSEN (UPPER)'	={return('Bulkley-Nechako')},
          'TUTIZZI LAKE'	={return('Peace River')},
          'TSAYDAYCHI LAKE'	={return('Bulkley-Nechako')},
          'PHILIP LAKE'	={return('Thompson-Nicola')},
          'MONASHEE PASS'	={return('North Okanagan')},
          'WHATSHAN (UPPER)'	={return('Central Kootenay')},
          'BARNES CREEK'	={return('North Okanagan')},
          'KOCH CREEK'	={return('Central Kootenay')},
          'ST. LEON CREEK'	={return('Central Kootenay')},
          'GRAYSTOKE LAKE'	={return('Central Okanagan')},
          'GRANITE MOUNTAIN'	={return('Kootenay Boundary')},
          'GOLDSTREAM'	={return('Capital')},
          'KEYSTONE CREEK'	={return('Columbia-Shuswap')},
          'SUNBEAM LAKE'	={return('Columbia-Shuswap')},
          'BUSH RIVER'	={return('Columbia-Shuswap')},
          'KIRBYVILLE LAKE'	={return('Columbia-Shuswap')},
          'DOWNIE SLIDE (LOWER)'	={return('Columbia-Shuswap')},
          'DOWNIE SLIDE (UPPER)'	={return('Columbia-Shuswap')},
          'BURNS LAKE'	={return('Bulkley-Nechako')},
          'MCGILLIVRAY PASS'	={return('Squamish-Lillooet')},
          'BRALORNE'	={return('Squamish-Lillooet')},
          'BRALORNE (UPPER)'	={return('Squamish-Lillooet')},
          'DOWNTOWN LAKE (UPPER)'	={return('Squamish-Lillooet')},
          'BRIDGE GLACIER (LOWER)'	={return('Squamish-Lillooet')},
          'STAVE LAKE'	={return('Fraser Valley')},
          'WAHLEACH LAKE'	={return('Fraser Valley')},
          'NAHATLATCH RIVER'	={return('Fraser Valley')},
          'DICKSON LAKE'	={return('Fraser Valley')},
          'KICKING HORSE'	={return('Columbia-Shuswap')},
          'BEAVERFOOT'	={return('Columbia-Shuswap')},
          'VERMONT CREEK'	={return('Columbia-Shuswap')},
          'FLOE LAKE'	={return('East Kootenay')},
          'MOUNT ASSINIBOINE'	={return('East Kootenay')},
          'MOUNT JOFFRE'	={return('East Kootenay')},
          'THUNDER CREEK'	={return('East Kootenay')},
          'FERGUSON'	={return('Columbia-Shuswap')},
          'MOUNT TEMPLEMAN'	={return('Central Kootenay')},
          'BRENDA MINE'	={return('Central Okanagan')},
          'MACDONALD LAKE'	={return('Central Okanagan')},
          'SUMALLO RIVER WEST'	={return('Fraser Valley')},
          'KLESILKWA'	={return('Fraser Valley')},
          'LAC LE JEUNE (UPPER)'	={return('Thompson-Nicola')},
          'FIELD'	={return('East Kootenay')},
          'SULLIVAN MINE'	={return('East Kootenay')},
          'FERNIE EAST'	={return('East Kootenay')},
          'NELSON'	={return('Central Kootenay')},
          'ISINTOK LAKE' ={return('Okanagan-Similkameen')},
          'ISLAHT LAKE'	={return('Central Okanagan')},
          'DOG MOUNTAIN'	={return('Greater Vancouver')},
          'BIRD CREEK'	={return('Bulkley-Nechako')},
          'CANOE RIVER'	={return('Fraser-Fort George')},
          'GRAY CREEK (LOWER)'	={return('Central Kootenay')},
          'GRAY CREEK (UPPER)'	={return('Central Kootenay')},
          'TROUT CREEK (WEST)'	={return('Okanagan-Similkameen')},
          'SUMMERLAND RESERVOIR'	={return('Okanagan-Similkameen')},
          'MCCULLOCH'	={return('Central Okanagan')},
          'POSTILL LAKE'	={return('Central Okanagan')},
          'OYAMA LAKE'	={return('Central Okanagan')},
          'TACHEK CREEK'	={return('Bulkley-Nechako')},
          'BEAR PASS'	={return('Kitimat-Stikine')},
          'SKINS LAKE'	={return('Bulkley-Nechako')},
          'ANGLEMONT'	={return('Columbia-Shuswap')},
          'MOUNT ABBOT'	={return('Columbia-Shuswap')},
          'RECORD MOUNTAIN'	={return('Kootenay Boundary')},
          'SILVER STAR MOUNTAIN'	={return('North Okanagan')},
          'MOUNT KOBAU'	={return('Okanagan-Similkameen')},
          'KIDPRICE LAKE'	={return('Bulkley-Nechako')},
          'MOUNT WELLS'	={return('Bulkley-Nechako')},
          'TAHTSA LAKE'	={return('Bulkley-Nechako')},
          'MOUNT SWANNELL'	={return('Bulkley-Nechako')},
          'NUTLI LAKE'	={return('Bulkley-Nechako')},
          'FIDELITY MOUNTAIN'	={return('Columbia-Shuswap')},
          'PRINCE GEORGE AIRPORT'	={return('Fraser-Fort George')},
          'GLACIER'	={return('Columbia-Shuswap')},
          'LOST HORSE MOUNTAIN'	={return('Okanagan-Similkameen')},
          'GROUSE MOUNTAIN'	={return('Greater Vancouver')},
          'SINCLAIR PASS'	={return('East Kootenay')},
          'GREYBACK RESERVOIR'	={return('Okanagan-Similkameen')},
          'DUNCAN LAKE NO. 2'	={return('Bulkley-Nechako')},
          'MISSEZULA MOUNTAIN'	={return('Okanagan-Similkameen')},
          'HAMILTON HILL'	={return('Okanagan-Similkameen')},
          'BLUE RIVER'	={return('Thompson-Nicola')},
          'LOG CABIN' ={return(NA)},             ############################# LOG CABIN!
          'TROUT CREEK'	={return('Okanagan-Similkameen')},
          'UPPER THELWOOD LAKE'	={return('Strathcona')},
          'TELEGRAPH CREEK'	={return('Kitimat-Stikine')},
          'ADAMS RIVER'	={return('Columbia-Shuswap')},
          'MCBRIDE (UPPER)'	={return('Fraser-Fort George')},
          'DOME MOUNTAIN'	={return('Fraser-Fort George')},
          'MOUNT TIMOTHY'	={return('Cariboo')},
          'PENFOLD CREEK'	={return('Cowichan Valley')},
          'ESPERON CR (UPPER)'	={return('Central Okanagan')},
          'POSTILL LAKE (UPPER)'	={return('Central Okanagan')},
          'EQUITY MINE'	={return('Bulkley-Nechako')},
          'LU LAKE'	={return('Bulkley-Nechako')},
          'SUMMIT LAKE'	={return('Central Kootenay')},
          'DUFFEY LAKE'	={return('Squamish-Lillooet')},
          'SHOVELNOSE MOUNTAIN'	={return('Thompson-Nicola')},
          'TROPHY MOUNTAIN'	={return('Thompson-Nicola')},
          'BOULEAU LAKE'	={return('North Okanagan')},
          'LIGHTNING LAKE'	={return('Okanagan-Similkameen')},
          'BROOKMERE'	={return('Thompson-Nicola')},
          'BIG CREEK'	={return('Cariboo')},
          'DEADMAN RIVER'	={return('Thompson-Nicola')},
          'WHITEROCKS MOUNTAIN'	={return('Central Okanagan')},
          'JADE CITY'	={return('Kitimat-Stikine')},
          'KNOUFF LAKE'	={return('Thompson-Nicola')},
          'HORSEFLY MOUNTAIN'	={return('Cariboo')},
          'PUNTZI MOUNTAIN'	={return('Cariboo')},
          'KIMBERLEY (UPPER) VOR'	={return('Kimberley')},
          'KIMBERLEY (MIDDLE) VOR'	={return('Kimberley')},
          'PALISADE LAKE'	={return('Greater Vancouver')},
          'CALLAGHAN CREEK'	={return('Squamish-Lillooet')},
          'DEASE LAKE'	={return('Kitimat-Stikine')},
          'HANSARD'	={return('Fraser-Fort George')},
          'GNAWED MOUNTAIN'	={return('Thompson-Nicola')},
          'NINGUNSAW PASS'	={return('Kitimat-Stikine')},
          'ISKUT'	={return('Kitimat-Stikine')},
          'NAZKO'	={return('Cariboo')},
          'VASEUX CREEK'	={return('Okanagan-Similkameen')},
          'HIGHLAND VALLEY'	={return('Thompson-Nicola')},
          'TYAUGHTON CREEK (NORTH)'	={return('Squamish-Lillooet')},
          'BIG WHITE MOUNTAIN'	={return('Kootenay Boundary')},
          'CARMI'	={return('Kootenay Boundary')},
          'ATLIN LAKE'	={return('Kitimat-Stikine')},
          'ESPERON CR (MIDDLE)'	={return('Central Okanagan')},
          'ENDERBY'	={return('North Okanagan')},
          'CHAPMAN LAKE'	={return('Sunshine Coast')},
          'MCKENDRICK CREEK'	={return('Bulkley-Nechak')},
          'MOUNT CRONIN'	={return('Bulkley-Nechako')},
          'COQUITLAM LAKE'	={return('Greater Vancouver')},
          'BLUEJOINT MOUNTAIN'	={return('Kootenay Boundary')},
          'POWELL RIVER (UPPER)'	={return('Powell River')},
          'POWELL RIVER (LOWER)'	={return('Powell River')},
          'WHATSHAN (LOWER)'	={return('Central Kootenay')},
          'ABERDEEN LAKE'	={return('North Okanagan')},
          'VERMILION RIVER NO.3'	={return('East Kootenay')},
          'FORT NELSON AIRPORT'	={return('Northern Rockies')},
          'FORT ST. JOHN AIRPORT'	={return('Peace River')},
          'MOUNT COKELY'	={return('Nanaimo')},
          'PAVILION'	={return('Thompson-Nicola')},
          'SANDON'	={return('Central Kootenay')},
          'MORRISSEY RIDGE'	={return('East Kootenay')},
          'WEDEENE RIVER SOUTH'	={return('Kitimat-Stikine')},
          'MISSION RIDGE'	={return('Squamish-Lillooet')},
          'DEADWOOD RIVER'	={return('Kitimat-Stikine')},
          'TUMEKA CREEK'	={return('Kitimat-Stikine')},
          'KINASKAN LAKE'	={return('Kitimat-Stikine')},
          'WADE LAKE'	={return('Kitimat-Stikine')},
          'YELLOWHEAD'	={return('Fraser-Fort George')},
          'CAVERHILL LAKE NEW'	={return('Thompson-Nicola')},
          'WATAM LAKE'	={return('Columbia-Shuswap')},
          'HEATHER MOUNTAIN'	={return('Columbia-Shuswap')},
          'MC LEOD LAKE'	={return('Fraser-Fort George')},
          'PONDOSY LAKE'	={return('Bulkley-Nechako')},
          'DOWNTON LAKE (UPPER)'	={return('Squamish-Lillooet')},
          'HEATHER MOUNTAIN (UPPER)'	={return('Cowichan Valley')},
          'LADY LAURIER LAKE' = {return('Peace River')},
          {return(NA)}
  )
}










## Here's the name of the csv with the Snowpack data...
location <- '~/Desktop/School/CS310/DataVis/'
fn <- file.path(location, 'Snowpack_Dataset.csv')

## Read in the data...
snow.temp <- read.table(fn, sep = ',', header = TRUE)
rm(fn, location)

## Make some tweaks to the columns...
snow.temp$Snow_Course_Name <- as.factor(snow.temp$Snow_Course_Name)
snow.temp$Date_of_Survey <- as.Date(snow.temp$Date_of_Survey, '%m/%d/%Y')


## This'll trim off everything pre-2010
inds <- which(snow.temp$Date_of_Survey >= as.Date('2010-01-01'))
snow.temp <- snow.temp[inds, ]
rm(inds)

## Now let's get rid of repeat observations from the same year
n <- as.numeric(length(snow.temp[,1]))



## First I'll just cut out all the NA's
i <- 1
while (i < as.numeric( length( snow.temp[,1]))) {

  if (is.na(snow.temp$Snow_Depth_cm[i]))
    snow.temp <- snow.temp[-i,]
  else
    i <- i + 1
}



## Recursive duplicate eliminator
for (i in 1:n) {
  
  if ( i > as.numeric( length(snow.temp[,1]))) {
    break
  }
  
  cur.year <- as.numeric(format(snow.temp$Date_of_Survey[i], '%Y'))
  cur.locn <- as.character(snow.temp$Snow_Course_Name[i])
  
  inds1 <- which(as.numeric(format(snow.temp$Date_of_Survey, '%Y')) == cur.year)
  inds2 <- which(as.character(snow.temp$Snow_Course_Name) == cur.locn)
  inds <- inds1[which(inds1 %in% inds2)]
  inds <- as.numeric(inds)
  l <- as.numeric(length(inds))
  if ( l > 1 ) {
    inds <- inds[-max(which.max(snow.temp$Snow_Depth_cm[inds]))]
    snow.temp <- snow.temp[-inds,]
  }
}

rm(cur.locn, cur.year, i, inds, inds1, inds2, l, n)


## Now let's get rid of those pesky Log Cabin records >:(
snow.temp <- snow.temp[-which(snow.temp$Snow_Course_Name == 'LOG CABIN'),]




## Now let's add those regional districts...
n <- as.numeric(length(snow.temp[,1]))
Reg_Dist <- rep(NA, times = n)

for(i in 1:n) {
  Reg_Dist[i] <- region_classifier(snow.temp$Snow_Course_Name[i])
}




## Trim the excess columns
snow <- data.frame('Location' = snow.temp$Snow_Course_Name,
                   'Date' = snow.temp$Date_of_Survey,
                   'Depth' = snow.temp$Snow_Depth_cm,
                   'Elevation' = snow.temp$Elevation_metres,
                   'Density' = snow.temp$Density_pecent,
                   'RD' = as.character(Reg_Dist))

rm(i, n, snow.temp, Reg_Dist)



## Now let's just write out that file...
fn <- 'snow.csv'
fp <- '~/Desktop/'
write.table(snow, file = file.path(fp, fn), sep = ',',
            row.names = FALSE)
rm(fn, fp)




