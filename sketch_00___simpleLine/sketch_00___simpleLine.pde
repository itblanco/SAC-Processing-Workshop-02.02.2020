float x = 100;
float y = 100;
float d = 100;

float dX = 3;
float dY = 1;

float x1 = 100;
float y1 = 10;
float x2 = 50;
float y2 = 250;

float dX1 = 0.5;
float dY1 = 1.3;
float dX2 = 3.6;
float dY2 = 2.1;


void setup() {
  size(1000, 500);
  frameRate(60);
  background(0);
}

void draw() {
  //background(0);
  strokeWeight(4);
  stroke(255, 0, 98, 10); // RGB values or RGBA values
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
