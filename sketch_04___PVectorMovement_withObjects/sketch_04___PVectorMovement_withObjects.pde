MovingCircle[] c;

void setup() {
  size(1000, 500);
  c = new MovingCircle[200];
  for (int i = 0; i < c.length; i++) {
    PVector p = new PVector(random(width), random(height));
    PVector v = new PVector(random(-5, 5), random(-5, 5));
    c[i] = new MovingCircle(p, v, 20);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < c.length; i++) {
    c[i].run();
  }
}

class MovingCircle {
  PVector pos;
  PVector vel;
  PVector acc;
  float size;
  float speed;
  float force;

  MovingCircle(PVector _pos, PVector _vel, float _size) {
    pos = _pos;
    vel = _vel;
    size = _size;
    acc = new PVector();

    speed = random(1, 13);
    force = random(0.1, 0.5);
  }

  void run() {
    drawCircle(pos, vel, acc);
  }

  void drawCircle(PVector circlePosition, PVector circleVelocity, PVector circleAcceleration) {
    circle(circlePosition.x, circlePosition.y, size); 

    //circlePosition.add(circleVelocity);
    PVector mouse = new PVector(mouseX, mouseY);  
    PVector diff = PVector.sub(mouse, circlePosition);
    diff.normalize();
    diff.mult(force);
    circleAcceleration.add(diff);
    circleVelocity.add(circleAcceleration);
    circleVelocity.limit(speed);
    circlePosition.add(circleVelocity);

    circleAcceleration.mult(0);

    if (circlePosition.x < 0 || circlePosition.x > width) {
      circleVelocity.x *= -1;
    }
    if (circlePosition.y < 0 || circlePosition.y > height) {
      circleVelocity.y *= -1;
    }
  }
}
