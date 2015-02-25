class Ball {
  float x, y, vx, vy, radius;

  Ball(float x_, float y_, float vx_, float vy_, float radius_) {
    x=x_;
    y=y_;
    vx=vx_;
    vy=vy_;
    radius=radius_;
  }

  void draw() {
    ellipse(x, y, radius*2, radius*2);
  }

  void move() {
    x=x+vx;
    y=y+vy;
    if (y>height-radius) {
      //bounce off bottom of screen
      vy=-abs(vy);
    }
    if (x>width-radius) {
      //bounce off right side of screen
      vx=-abs(vx);
    }
    if (y<0+radius) {
      //bounce off top of screen
      vy=abs(vy);
    }
    if (x<0+radius) {
      //bounce off left side of screen
      vx=abs(vx);
    }
  }
}

