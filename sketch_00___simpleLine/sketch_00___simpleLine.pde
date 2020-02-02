float x1;
float y1;
float x2;
float y2;

float dX1;
float dY1;
float dX2;
float dY2;

color c;

void setup() {
  size(1000, 500);
  frameRate(60);
  background(0);
  
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);
  
  dX1 = random(-5, 5);
  dY1 = random(-5, 5);
  dX2 = random(-5, 5);
  dY2 = random(-5, 5);
  
  c = color(random(255), random(255), random(255));
}

void draw() {
  //background(0);
  
  strokeWeight(4);
  stroke(c, 10); // RGB values or RGBA values
  line(x1, y1, x2, y2);
  
  x1 += dX1;
  y1 += dY1;
  x2 += dX2;
  y2 += dY2;
  
  if(x1 > width || x1 < 0) {
   dX1 *= -1; 
  }
  if(x2 > width || x2 < 0) {
   dX2 *= -1; 
  }
  if(y1 < 0 || y1 > height) {
   dY1 *= -1; 
  }
  if(y2 < 0 || y2 > height) {
   dY2 *= -1; 
  }
}
