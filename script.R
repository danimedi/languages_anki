library(fs) # manipulate files
library(stringr) # manipulate strings
library(dplyr) # data management
library(readr) # read files

# read data set of the 625 words
dat <- read_csv2(path("625_words", "data_set_flashcards.csv"), col_names = FALSE)
# get names of images
img_names <- list.files(path("625_words", "media"))
# original list of words
word_list <- readLines(path("625_words", "original_list.txt"))

# images in media that are not in the data set
img_data_set <- str_extract_all(dat$X1, "\\w+[.]jpg") %>% unlist() # image names from the data set
img_names[!img_names %in% img_data_set]
# images in the data set that are not in media
img_data_set[!img_data_set %in% img_names]

# obtain the repeated words (same word, different meanings), contrast this with the original list
freqs <- table(dat$X2)
names(freqs)[freqs > 1]

# change the names of the images in the data set
actual_words <- str_remove_all(dat$X1, "(<img src=\"|\">)")
new_words <- paste0("vocab-", actual_words)
dat$X1 <- paste0("<img src=\"", new_words, "\">")
# write_excel_csv2(dat, "625_words/data_set_flashcards.csv", col_names = FALSE)


# check translations based on multiple languages --------------------------

# there is a blog where there is an explanation about how to use google sheets in R to make
# translations: https://www.brodrigues.co/blog/2020-12-05-poorman_translate/

library(googlesheet4)












