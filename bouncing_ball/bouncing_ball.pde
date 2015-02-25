ArrayList<Ball> bouncingBalls;

void setup() {
  size(600, 400);
  bouncingBalls=new ArrayList<Ball>();
  bouncingBalls.add(new Ball(100, 200, 2, 2, 25));
  bouncingBalls.add(new Ball(500, 200, -2, -2, 25));
}

void draw() {
  background(128,128,128);
  for (Ball ball:bouncingBalls) {
    ball.draw();
    ball.move();
  }
}

