### Miles Innes
### 12/4/2023
### 
### Batch convert HEIC files to JPEG files
###
################################################################################


### Imports
library(magick)
library(tidyr)
library(stringr)


### Convert Image Function

img.convert <- function(inFol, outFol){
  setwd(outFol)
  list <- list.files(inFol)
  for (file in list){
    a <- image_read(file.path(inFol, file))
    b <- image_convert(a, "jpeg")
    image_write(b, path=paste(str_sub(file, end=-6), ".jpeg"), format="jpeg")
  }
}


### Blue Lake
FolIn <- ""
FolOut <- ""

img.convert(FolIn, FolOut)


