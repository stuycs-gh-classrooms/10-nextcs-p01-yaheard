[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Name0: DEBOJIT SARKER
### Name1: XUAN YAO
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: CHOOSE WISELY

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

Ball, paddle, brick classes

FOR BALL:
Move func
Die func
Bounce off paddle func
Bounce off Brick func
Bounce off wall func

FOR PADDLE:
Move with mouse func
Move with arrow key func

FOR BRICK:
Make grid func
Collision with ball func


### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

Lives
Score
Power ups
Play/Pause
Reset
Different maps (diff grid configurations)
Color of bricks are a gradient (as in each brick) and also "pulsate". Color matches lives.
Ball matches ball speed
Moving Bricks
Unbreakable bricks
Paddle shrink
ALOT MORE.

### Array Usage
How will you be using arrays in this project?

1D Array:

For balls

2D Array:

Bricks


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
left and right arrow keys - move paddle

EXTRA:
R - reset
Space - pause/play

Mouse Control:
- Mouse movement:
  Mouse x - Paddle position
  
- Mouse pressed:
  EXTRA:
  Make new ball at mouse position when powerup


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS BALL

- Instance variables:
PVector for ball pos
Int for xspeed, yspeed, size, lives
Color for color

- METHODS:
  Display func
  Move func
  Die func
  Bounce off paddle func
  Bounce off Brick func
  Bounce off wall func

CLASS BRICK

- Instance variables:
  PVector for brick pos
  Int for width, height
  Color for color

- METHODS:
  Make grid func
  Collision with ball func
  Display func

CLASS PADDLE


- Instance variables:
  PVector for paddle pos
  Int for width,height
  Color for color


- METHODS:
  Move with mouse func
  Move with arrow key func
  Display func
  
  
  Make grid func
  Collision with ball func
