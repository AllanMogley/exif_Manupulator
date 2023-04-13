# Load exiftoolr package
library(exiftoolr)
library(dplyr)
library(visdat)
library(inspectdf)

# Read multi-band TIFF file
tiff_file <- list.files(pattern = "*.TIF")
metadata <- exif_read(tiff_file)


table(metadata$BandFreq)
table(metadata$BandName)

head(metadata, 5)
summary(metadata)
inspect_cat(metadata)

vis_dat(metadata)
