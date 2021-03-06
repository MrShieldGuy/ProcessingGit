class Ball {
  float x, y, vx, vy, radius, gravity, colr=64;

  Ball(float x_, float y_, float vx_, float vy_, float radius_, float gravity_) {
    x=x_;
    y=y_;
    vx=vx_;
    vy=vy_;
    radius=radius_;
    gravity=gravity_;
  }

  boolean touching (Ball b) {
    float d=dist(x, y, b.x, b.y);
    return d<radius+b.radius;
    if (touching == true) {
      colr=128;
    }
  }

  void setColor(int clr) {
    colr = clr;
  }
  void move() {
    x=x+vx;
    y=y+vy;
    vy=vy+gravity;
    if (y>height-radius) {
      //bounce off bottom of screen
      vy=-10;//-abs(vy);
    }
    if (x>width-radius) {
      //bounce off right side of screen
      vx=-abs(vx);
    }
    if (x<0+radius) {
      //bounce off left side of screen
      vx=abs(vx);
    }
  }

  void draw() {
    fill(colr);
    ellipse(x, y, radius*2, radius*2);
  }
}

