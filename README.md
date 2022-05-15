# Water Sort Puzzle Solver

## SWI-Prolog:

* Julian Fernando - 1906285522
* Cornelita Lugita Santoso - 1906292995
* Steven Wiryadinata Halim - 1906350622

## Live Demo

[https://water-sort.herokuapp.com/](https://water-sort.herokuapp.com/)

## Description

* This app lets you play water sort puzzle on web browser.
* If you stuck (or don't want to think :D), just press **"Get Hint"** button.

## How to Run The Game Locally

* Install [SWI-Prolog](https://www.swi-prolog.org/download/stable)

* Clone this repository

  ```
  git clone https://github.com/cornelita/water-sort-puzzle.git
  ```

* Open the directory in terminal

* Run the command

  ```
  swipl web.pl
  ```

* Open [`http://localhost:5151`](http://localhost:5151)

* Time to play! 🎮

* To stop the program, input this in the terminal

  ```
  halt.
  ```

## Test Cases

```
# Query
solve([green, red, green, red], [blue, blue, blue, red], [blue, red, green, green], [], [], 9, Hint).

# Answer
Hint = [i2toi4, i2toi4, i2toi4, i3toi4, i3toi2, i1toi3, i1toi2, i1toi3, i1toi2].
```

Notes:

* iX -> Tube X
* iXtoiY -> Move water from tube X to tube Y
