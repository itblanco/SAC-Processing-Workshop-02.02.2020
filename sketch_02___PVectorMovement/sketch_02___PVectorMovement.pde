PVector pos; 
PVector vel;
PVector acc;
float size = 60;

void setup() {
 size(1000, 500);
 pos = new PVector(random(width), random(height)); 
 vel = new PVector(random(-5, 5), random(-5, 5));
 acc = new PVector();
}

void draw() {
  background(0);
  noStroke();
  drawCircle(pos, vel, acc);
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
  
  if(circlePosition.x < 0 || circlePosition.x > width) {
   circleVelocity.x *= -1; 
  }
  if(circlePosition.y < 0 || circlePosition.y > height) {
   circleVelocity.y *= -1; 
  }
}
