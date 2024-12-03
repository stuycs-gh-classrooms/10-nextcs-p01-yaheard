class Ball
{
  //instance variables
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;
  color c;

  //default constructor
  Ball(PVector bcenter, int bsize)
  {
    this.bsize = bsize;
    center = bcenter;
    xspeed = int(random(-5,6));
    yspeed = int(random(-5, 0));
    c = color(255);
  }


  //visual behavior
  void display()
  {
    fill(c);
    circle(center.x, center.y, bsize);
  }//display


  //movement behavior
  void move()
  {
    if (center.x >= width - bsize/2 ||
      center.x <= bsize/2) {
      xspeed*= -1;
    }
    if (center.y >= height - bsize/2 ||
      center.y <= bsize/2) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
  }//move
}//Ball
