library(raster)
c = stack(list.files("~/Downloads/denl/ams", full.names = T))
library(APMtools)
size = 100
ac = crop(c, extent(c, floor(nrow(c)/2) - size, floor(nrow(c)/2) + 
                     size, floor(ncol(c)/2) - size, floor(ncol(c)/2) + size))
plot(ac)
ac
plot(ac)
writeRaster(ac,filename=paste0("~/Documents/GitHub/global-mapping/predictor/ams/", names(c)), bylayer =T, format="GTiff")

stack("~/Documents/GitHub/global-mapping/predictor/ams5k.tif")
plot(ac)