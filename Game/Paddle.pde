class Paddle {
  int w,h;
  PVector pos;
  color pcol;
  
  Paddle(int w) {
    this.w = w;
    h = int (height*.0125);
    pos = new PVector((width-w)/2,height*.95);
    pcol = color(0,0,255);
  }//constructor
  
  void display() {
    fill(pcol);
    rect(pos.x,pos.y,w,h);
  }//display
  
  void moveL() {
    if(pos.x > 0) {
    pos.x += -5;
    }
  }//move left
  
  void moveR() {
    if(pos.x+w < width) {
    pos.x += 5;
    }
  }//move right
}
