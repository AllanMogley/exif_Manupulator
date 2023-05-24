# Install Load packages if absent----------
if(!require(pacman)) install.packages("pacman")
pacman::p_load(exiftoolr,
               dplyr,
               visdat,
               inspectdf,
               tidyverse, # meta-package
               inspectdf,
               plotly,
               janitor,
               visdat,
               esquisse)




# Read multi-band TIFF file --------------------
tiff_file <- list.files(pattern = "*.TIF") [1:10]
metadata <- exif_read(tiff_file)


#Inspect the Data Frame-----------
head(metadata, 5)
summary(metadata)

show_plot(inspect_cat(metadata))
show_plot(inspect_num(metadata))
vis_dat(metadata)

# Select and Subset Numeric Columns
num_data = dplyr::select(metadata, where(is.numeric))
vis_cor(num_data)
vis_dat(num_data)

# vis_miss(metadata)


table(metadata$BandFreq)
table(metadata$BandName)



band_name 



