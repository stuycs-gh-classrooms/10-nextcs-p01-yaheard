Ball b0;
int bsize = 20;
PVector bcenter;

void setup()
{
  size(500, 500);
  bcenter = new PVector(width/2,height*0.9);
  b0 = new Ball(bcenter,bsize);
}//setup


void draw()
{
  background(0);
  b0.display();
  b0.move();
}//draw


  void keyPressed()
{if (key == 'r') {
    b0 = new Ball(bcenter,bsize);
  }
}//keyPressed
