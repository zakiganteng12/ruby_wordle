# Ruby Wordle

A command-line implementation of the popular Wordle word-guessing game, written in Ruby.

## Features

- Classic Wordle gameplay with 6 guesses
- Color-coded feedback:
  - 🟢 Green: Letter is correct and in the right position
  - 🟡 Yellow: Letter is in the word but wrong position
  - 🔴 Red: Letter is not in the word
- Visual keyboard showing used letters
- Random word selection from a curated list
- Play again option after each game

## Requirements

- Ruby (any recent version should work)

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/ruby-wordle.git
   cd ruby-wordle
   ```

2. Make sure you have Ruby installed on your system.

## Usage

### Windows
Run the included batch file:
```cmd
wordle.bat
```

### Any platform
Run directly with Ruby:
```bash
ruby wordle.ru
```

## How to Play

1. The game will select a random 5-letter word
2. You have 6 attempts to guess the word
3. Enter a 5-letter word and press Enter
4. Use the color feedback to refine your guesses:
   - Green letters are correct and in position
   - Yellow letters are in the word but wrong position
   - Red letters are not in the word
5. The keyboard display shows which letters you've used
6. Win by guessing the word within 6 tries, or lose when guesses are exhausted

## Game Output Example

```
.....
.....
.....
.....
.....
.....

QWERTYUIOP
ASDFGHJKL
ZXCVBNM

RED == Letter is not in the word and already typed
GREEN == Letter is in the correct position and already typed
YELLOW == Letter is in the word but in the wrong position

Enter your guess:
```

## Files

- `wordle.ru` - Main game logic
- `keyboard.ru` - Keyboard display component
- `wordle.bat` - Windows batch file to run the game (change it urself)
- `words.json` - JSON array of 5-letter words (from stuartpb/wordles) : https://github.com/stuartpb/wordles 

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open source. Feel free to use and modify as needed.
