PVector[] pos; 
PVector[] vel;
PVector[] acc;
float size = 10;

int count = 100;

void setup() {
  size(1000, 500);
  
  pos = new PVector[count];
  vel = new PVector[count];
  acc = new PVector[count];
  for (int i = 0; i < count; i++) {
    pos[i] = new PVector(random(width), random(height)); 
    vel[i] = new PVector(random(-5, 5), random(-5, 5));
    acc[i] = new PVector();
  }
}

void draw() {
  background(0);
  noStroke();

  for (int i = 0; i < count; i++) {
    drawCircle(pos[i], vel[i], acc[i]);
  }
}

void drawCircle(PVector circlePosition, PVector circleVelocity, PVector circleAcceleration) {
  circle(circlePosition.x, circlePosition.y, size); 

  //circlePosition.add(circleVelocity);
  PVector mouse = new PVector(mouseX, mouseY);  
  PVector diff = PVector.sub(mouse, circlePosition);
  diff.normalize();
  diff.mult(0.2);
  circleAcceleration.add(diff);
  circleVelocity.add(circleAcceleration);
  circleVelocity.limit(10);
  circlePosition.add(circleVelocity);

  circleAcceleration.mult(0);

  if (circlePosition.x < 0 || circlePosition.x > width) {
    circleVelocity.x *= -1;
  }
  if (circlePosition.y < 0 || circlePosition.y > height) {
    circleVelocity.y *= -1;
  }
}
