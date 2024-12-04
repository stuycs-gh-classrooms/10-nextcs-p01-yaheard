class Ball
{
  //instance variables
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;
  color c;

  //default constructor
  Ball(int bsize)
  {
    this.bsize = bsize;
    center = new PVector(width/2, height*0.8);
    xspeed = int(random(-5, 6));
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
  void move(Paddle pad)
  {
    if (this.collisionRuns(pad) == 1) {
      xspeed*= -1;
    }
    if (this.collisionRuns(pad) == 2) {
      yspeed*= -1;
    }
    center.x+= xspeed;
    center.y+= yspeed;
  }//move
  int collisionRuns(Paddle pad) {
    if (center.x >= width - bsize/2 || center.x <= bsize/2) {
      return 1;
    } else if(center.y <= bsize/2) {
      return 2;
    } else if(paddleC(pad)) {
      return 3;
    }
    else {
      return 0;
    }
  }
  boolean paddleC(Paddle pad) {
    boolean hit = false;
    for(float i = pad.pos.x; i <= pad.pos.x+pad.w; i++) {
      for(float j = pad.pos.y; j <= pad.pos.y+pad.h; j++) {
        if(dist(center.x,center.y,i,j) <= bsize) {
          hit = true;
        }
      }
    }
    return hit;
  }
}//Ball
