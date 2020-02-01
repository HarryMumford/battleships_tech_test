# battleships_tech_test

## Approach

### User stories

```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)

As a player
So that I can create a layout of ships to outwit my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```
### Separate into nouns and verbs

| Nouns  | Verbs                |
| :----- | :------------------- |
| player | place (ship)         |
| game   | choose (ship)        |
| board  | view (hits & misses) |
| ship   | win                  |
| game   | lose                 |
| hit    | fire                 |
| miss   | sink (ship)          |
| turn   | switch (turn)        |
|        | play                 |

### Feature flow chart

      |choose ships
      v
      |fire
      v
|miss       |hit
v           v
see hits + board?
|win        |lose
v           |
game over   |
            v
    fire as other player

### Separate into classes, attributes and methods

|Classes|methods
|:-:|:-:|
Game|switch_turn, play
Player|fire, place, choose
ShipBoard|sink, view
HitBoard|view
Cell|update_board

Prompt class? / module?

##### Features

1. Place a ship
2. Place all ships
3. Fire (automatically views both boards)
4. Sink ship (automatically views both boards with sunken ship)
5. Sink all ships and win

## Description

### Technologies Used

### Development

- ruby
- git
- bundler
  
### Tests

- rspec
- rubocop
- simplecov

Possible end design for the board

```
"
+----+---+---+---+---+---+---+---+---+---+---+
|    | A | B | C | D | E | F | G | H | I | J |
+----+---+---+---+---+---+---+---+---+---+---+
|  1 | S | S | S |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  2 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  3 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  4 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  5 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  6 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  7 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  8 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
|  9 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
| 10 |   |   |   |   |   |   |   |   |   |   |
+----+---+---+---+---+---+---+---+---+---+---+
"
```



