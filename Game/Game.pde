Ball b0;
int bsize = 15;
Paddle p0;

void setup() {
  size(750, 750);
  b0 = new Ball(bsize);
  p0 = new Paddle(100);
}//setup


void draw() {
  background(0);
  b0.display();
  p0.display();
  b0.move(p0);
}//draw


void keyPressed() {
  if (key == 'r') {
    b0 = new Ball(bsize);
  } else if (keyCode == LEFT) {
    p0.moveL();
  } else if (keyCode == RIGHT) {
    p0.moveR();
  }
}//keyPressed

void mouseMoved() {
  p0.pos.x = mouseX-(p0.w)/2;
}
