library(fs) # manipulate files
library(readxl) # read Excel files
library(stringr) # manipulate strings
library(dplyr) # data management
library(readr) # read and write files
setwd(path("C:", "Users", "NAPO", "Desktop", "languages_anki")) # set working directory

# read data set of the 625 words
dat <- read_xlsx(path("625_words", "data_set_flashcards.xlsx"))
# get names of images
img_names <- list.files(path("625_words", "media"))
# original list of words
word_list <- readLines(path("625_words", "original_list.txt"))

clean_words <- str_extract(word_list, regex("\\w+"))
dat$...2
# check the conflicting words between the data set and the original list
c(clean_words[!clean_words %in% dat$...2], dat$...2[!dat$...2 %in% clean_words])
# check the redundant words
word_list %>% str_subset("\\w+/\\w+")

# obtain the names of the image with numbers (this means different images for same words)
img_names %>% str_subset("\\w+\\d")

# write the csv file
write_excel_csv2(dat, path("625_words", "data_set_flashcards.csv"))
