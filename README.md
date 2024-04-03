# Words opener

This application facilitates searching for multiple English words or phrases in the [Cambridge Dictionary](link - https://dictionary.cambridge.org) at once. It allows users to quickly access definitions, usage examples, or listen to pronunciations for a comprehensive understanding of the queried terms.


## Getting Started
1. Clone repository

```bash
git clone git://github.com/NigmatullinaRamilya/words-opener.git
```

2. Run setup script

```bash
bin/setup
```


## Instructions for using the application
0. Prepare a list of words, e.g. [IELTS vocabulary](https://engexam.info/ielts-reading-practice-tests/ielts-reading-practice-test-1/5/#ielts-vocab-1)
```
n. prominence — fame, outstanding position
lat. lingua franca — common language of communication for people who have different mother tongues. English is the worldwide recognized lingua franca.
n. revival — return to life, resurrection
adj. emergent — coming into notice
adv. hence — because of this, for this reason
n. treatise — a scientific work or paper
conj. whereas — but on the other hand
```


### Option 1
1. Create a file with words, e.g. in the `vocabulary/` directory or paste words into the default file `vocabulary/in.txt`.
2. If you are creating a file, copy its path beforehand.
3. Run the program using the command `bin/open file <file_name>` (e.g. `bin/open file vocabulary/ielts-reading-1-section-1`); if there is no `<file_name>`, the path to the default file will be used.
4. Check the browser – the links should open automatically.


### Option 2
1. Run the application by typing `bin/open terminal`.
2. Paste your words to the console
3. Press Enter
4. Press ^D
5. Check the browser – the links should open automatically

## Testing
To run the tests, use the command:

```bash
bin/rspec
```
