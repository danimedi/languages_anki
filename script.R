library(fs) # manipulate files
library(readxl) # read Excel files
library(stringr) # manipulate strings
library(dplyr) # data management

# read data set of the 625 words
dat <- read_xlsx(path("625_words", "data_set_flashcards.xlsx"), col_names = FALSE)
# get names of images
img_names <- list.files(path("625_words", "media"))
# original list of words
word_list <- readLines(path("625_words", "original_list.txt"))

clean_words <- str_extract(word_list, regex("\\w+"))
dat$...2
