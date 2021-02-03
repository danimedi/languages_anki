library(here)

# set the folder containing media files
media_folder <- here("data_625_words", "media")

# change names of images
actual_names <- list.files(media_folder)
new_names <- actual_names # change here the names (include the extension)
file.rename(paste0(media_folder, actual_names), paste0(media_folder, new_names))

# change names in the data set
actual_words <- str_remove_all(dat$X1, "(<img src=\"|\">)")
new_words <- actual_words # change here the names (include the extension)
dat$X1 <- paste0("<img src=\"", new_words, "\">")
write_excel_csv2(dat, "625_words/data_set_flashcards.csv", col_names = FALSE)
