library(here)
library(stringr)

source(here("code", "extract_info_from_data.R"))

img_names_data <- str_extract(data_set$X1, "vocab-\\w+[.]jpg")
img_names_folder <- list.files(here("data_625_words", "media"))

#missing images:
length(img_names_data) - length(img_names_folder) #there is 7 missing images

#and there are just 7 repeated words:
img_names_data[duplicated(img_names_data)]

#there is one NA value in the data
img_names_data[is.na(img_names_data)]
img_names_folder[is.na(img_names_folder)]

#"same" as:
setdiff(img_names_data, img_names_folder)
