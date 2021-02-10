# languages_anki

This is a repo to create decks for languages using Anki.

## Organization

This repo currently contains 3 folders:

- 'code': scripts
- 'data_625_words': data from the 625 words
- 'decks_json': json using the add-on AnkiConnect (NOTE: its content is outdated)

## 625 words

Data base with the translations of the 625 meaningful words most commonly used (there actually less than 625 words), it includes images (+ file with the images) and translations to Spanish and Portuguese.

## decks_json

It includes json files (currently 1) with the info for the Anki deck, created using the add-on "CrowdAnki".

> This file does NOT include media, so it should be downloaded from the media file (file with the images)

## Things to do

- Change names of files related to "625" words, becuase it's inaccurate
- Deal with numbers like 22, 34, 41, etc.
- Improve the file system (e.g. decide if using one or more files for the media)
- Improve the images
- Deal with missing images (i.e. words without images)
- Words with different meanings (i.e. same word and different images)
- Think about including audio files (remember that other option is using a TTS engine in the computer)
- Create / update the data set directly from changes in the decks (maybe using AnkiConnect add-on to generate the data set with code)
- Use 'googlesheet4' or other packages/resources to automate translation and check the translation from different languages (e.g. https://www.brodrigues.co/blog/2020-12-05-poorman_translate/)
- Automate the process of downloading the deck (information from the CSV + media)
- Think about adding audio files
- Think about using a file system or other structures to organize the data, instead of a data set (it could bring more possibilities, like adding multiple pictures for the same image and new ways to name the images, e.g. of final name of the image in anki: "vocab-rain_01.jpg", you could just use the name "01.jpg" in the folder)
- Think about maintaining the media files in Google Drive, to improve collaboration for the images

## General plan

1. Create flashcards for basic vocabulary (625 words)
2. Learn some of basic grammar (probably without Anki)
3. Create sentence cards
3. Create flashcards for sentences
4. Improve what you want: more vocabulary, read audio books, write, watch videos or movies, speak, etc. Finally, remember that the goal is to use the language rather than collecting words or rules of the language
