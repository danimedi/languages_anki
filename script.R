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

# obtain the names of the image with numbers (this means different images for same words)
img_names %>% str_subset("\\w+\\d")

# obtain the repeated words (same word, different meanings), contrast this with the original list
freqs <- table(dat$...2)
names(freqs)[freqs > 1]
