float[] x;
float[] y;

float[] dX;
float[] dY;

int count = 10 * 2;
color c[];

void setup() {
  size(1000, 500);
  frameRate(60);
  background(0);
  
  x = new float[count];
  y = new float[count];
  
  dX = new float[count];
  dY = new float[count];
  
  c = new color[count];
  
  for(int i = 0; i < count; i++) { 
    x[i] = random(width);
    y[i] = random(height);
    dX[i] = random(-5, 5);
    dY[i] = random(-5, 5);
    
    c[i] = color(random(255), random(255), random(255));
  }
  
  
}

void draw() {
  //background(0);
  
  strokeWeight(4);
   // RGB values or RGBA values 
  
  for(int i = 0; i < count; i++) {
    x[i] += dX[i];
    y[i] += dY[i];
    
    if(x[i] < 0 || x[i] > width) {
      dX[i] *= -1;
    }
    if(y[i] < 0 || y[i] > height) {
      dY[i] *= -1;
    }
  }
  
  for(int i = 0; i < count - 1; i++) {
    stroke(c[i], 1);
    line(x[i], y[i], x[i+1], y[i+1]);
  }
}
