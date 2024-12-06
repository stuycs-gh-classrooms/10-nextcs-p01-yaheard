Ball[] b;
int bsize = 15;
Paddle p0;

void setup() {
  size(750, 400);
  b = new Ball[1];
  p0 = new Paddle(100);
  makeBalls(b);
}//setup

void draw() {
  background(0);
  displayBalls(b);
  if (p0.pos.x < 0) {
    p0.pos.x = 0;
  } else if (p0.pos.x+p0.w > width) {
    p0.pos.x = width - p0.w;
  }
  p0.display();
  moveBalls(b);
}//draw


void keyPressed() {
  if (key == 'r' || key == 'R') {
    b = resetBall();
    makeBalls(b);
  } else if (keyCode == LEFT) {
    p0.moveL();
  } else if (keyCode == RIGHT) {
    p0.moveR();
  } else if (key == 'e' || key == 'E') {
    b = addBall(b);
    makeNew(b);
  }
}//keyPressed

void mouseMoved() {
  p0.pos.x = mouseX-(p0.w)/2;
}//mouseMoved

void makeBalls(Ball[] b) {
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(bsize, p0);
  }
}//makeBalls

void displayBalls(Ball[] b) {
  for (int i = 0; i < b.length; i++) {
    b[i].display();
  }
}//displayBalls

void moveBalls(Ball[] b) {
  for (int i = 0; i < b.length; i++) {
    b[i].move(p0);
  }
}//moveBalls

Ball[] addBall(Ball[] b) {
  Ball[] newb = new Ball[b.length+1];
  for(int i = 0; i < b.length; i++) {
    newb[i] = b[i];
  }
  return newb;
}//addBall

void makeNew(Ball[] b) {
  for (int i = 0; i < b.length; i++) {
    if (b[i] == null) {
      b[i] = new Ball(bsize, p0);
    }
  }
}//makeNew

Ball[] resetBall() {
  Ball[] oldb = new Ball[1];
  return oldb;
}//resetBall
