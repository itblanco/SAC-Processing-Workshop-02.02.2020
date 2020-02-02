float[] x;
float[] y;

float[] dX;
float[] dY;

int count = 4;
color c;

void setup() {
  size(1000, 500);
  frameRate(60);
  background(0);
  
  x = new float[count];
  y = new float[count];
  
  dX = new float[count];
  dY = new float[count]; 
  
  x[0] = random(width);
  x[1] = random(width);
  x[2] = random(width);
  x[3] = random(width);
  
  y[0] = random(height);
  y[1] = random(height);
  y[2] = random(height);
  y[3] = random(height);
  
  dX[0] = random(-5, 5);
  dX[1] = random(-5, 5);
  dX[2] = random(-5, 5);
  dX[3] = random(-5, 5);
  
  dY[0] = random(-5, 5);
  dY[1] = random(-5, 5);
  dY[2] = random(-5, 5);
  dY[3] = random(-5, 5);
  
  c = color(random(255), random(255), random(255));
}

void draw() {
  //background(0);
  
  strokeWeight(4);
  stroke(c, 10); // RGB values or RGBA values
  line(x[0], y[0], x[1], y[1]);
  
  x[0] += dX[0];
  x[1] += dX[1];
  x[2] += dX[2];
  x[3] += dX[3];
  
  y[0] += dY[0];
  y[1] += dY[1];
  y[2] += dY[2];
  y[3] += dY[3];
  
  
  if(x[0] > width || x[0] < 0) {
   dX[0] *= -1; 
  }
  if(x[1] > width || x[1] < 0) {
   dX[1] *= -1; 
  }
  if(y[0] < 0 || y[0] > height) {
   dY[0] *= -1; 
  }
  if(y[1] < 0 || y[1] > height) {
   dY[1] *= -1; 
  }
}
