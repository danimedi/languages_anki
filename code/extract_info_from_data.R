library(here)
library(readr)

# read data set of the 625 words
data_set <- read_csv2(here("data_625_words", "data_set_flashcards.csv"), col_names = FALSE)
# get names of images
img_names <- list.files(here("data_625_words", "media"))
# original list of words
word_list <- readLines(file.path("data_625_words", "original_list.txt"))
