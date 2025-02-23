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

## Audio files

To deal with the audio files I created an R package that enabled me to download audios from my words using the Forvo API. This is the repo:

[vocabulaRy](https://github.com/danimedi/vocabulaRy)
