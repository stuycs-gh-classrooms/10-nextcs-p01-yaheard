class Ball
{
  PVector center;
  int xspeed;
  int yspeed;
  int bsize;
  color c;
  boolean alive;
  //variables

  Ball(int bsize, Paddle pad)
  {
    this.bsize = bsize;
    center = new PVector(pad.pos.x+pad.w/2, height*0.9);
    xspeed = int(random(0, 2));
    yspeed = -5;
    c = color(255);
    if (xspeed == 0) {
      xspeed = -5;
    } else {
      xspeed = 5;
    }
    alive = true;
  } //construct

  void display()
  {
    if (alive) {
      fill(c);
      circle(center.x, center.y, bsize);
    }
  }//display


  void move(Paddle pad)
  {
    if (alive) {
      if (center.y-bsize > height) {
        alive = false;
      }
      if (this.collisionRuns(pad) == 1) {
        xspeed*= -1;
      }
      if (this.collisionRuns(pad) == 2) {
        yspeed*= -1;
      }
      if (this.collisionRuns(pad) == 3) {
        yspeed *= -1;
      }
      if (this.collisionRuns(pad) == 4) {
        yspeed *= -1;
        xspeed *= -1;
      }
      center.x+= xspeed;
      center.y+= yspeed;
    }
  }//move

  int collisionRuns(Paddle pad) {
    if (center.x >= width - bsize/2 || center.x <= bsize/2) {
      return 1;
    } else if (center.y <= bsize/2) {
      return 2;
    } else if (paddleC(pad) == 1) {
      return 3;
    } else if (paddleC(pad) == 2) {
      return 4;
    } else {
      return 0;
    }
  }//collision runs

  int paddleC(Paddle pad) {
    int hit = 0;
    for (float i = pad.pos.x; i <= pad.pos.x+pad.w; i++) {
      if (dist(center.x, center.y, i, pad.pos.y) < bsize) {
        hit = 1;
      }
    }
    for (float j = pad.pos.y+1; j <= pad.pos.y+pad.h; j++) {
      if (dist(center.x, center.y, pad.pos.x-1, j) < bsize || dist(center.x, center.y, pad.pos.x+pad.w+1, j) < bsize) {
        hit = 2;
      }
    }

    return hit;
  }//paddleC
}//Ball
