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

# images in media that are not in the data set
img_data_set <- str_extract_all(dat$...1, "\\w+[.]jpg") %>% unlist() # image names from the data set
img_names[!img_names %in% img_data_set]
# images in the data set that are not in media
img_data_set[!img_data_set %in% img_names]

# obtain the repeated words (same word, different meanings), contrast this with the original list
freqs <- table(dat$...2)
names(freqs)[freqs > 1]


new_dir <- file.path("625_words", "media")
setwd(new_dir)
actual_names <- list.files()
new_names <- gsub("625_words", "vocab", actual_names)
file.rename(actual_names, new_names)



# check translations based on multiple languages --------------------------

# there is a blog where there is an explanation about how to use google sheets in R to make
# translations: https://www.brodrigues.co/blog/2020-12-05-poorman_translate/

library(googlesheet4)












