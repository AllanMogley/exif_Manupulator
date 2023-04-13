# Load exiftoolr package
library(exiftoolr)
library(dplyr)

# Read multi-band TIFF file
tiff_file <- list.files(pattern = "*.TIF")
metadata <- exif_read(tiff_file)

# Display band names
cat("Band names:\n")
cat(metadata$BandName)
print(metadata$FileName, metadata$BandName)

table(metadata$BandFreq)
table(metadata$BandName)
