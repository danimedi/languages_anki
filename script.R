library(fs) # manipulate files
library(readxl) # read Excel files

# read data set of the 625 words
dat <- read_xlsx(path("625_words", "data_set_flashcards.xlsx"), col_names = FALSE)
# get names of images
img_names <- list.files(path("625_words", "media"))

