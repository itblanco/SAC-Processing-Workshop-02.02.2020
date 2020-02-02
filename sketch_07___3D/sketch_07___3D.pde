import peasy.*;

PeasyCam cam;

PVector[] pos;

void setup() {
  size(1500, 800, P3D);
  cam = new PeasyCam(this, 400);
  pos = new PVector[100];
  for(int i = 0; i < 100; i++) {
    pos[i] = new PVector(random(500), random(500), random(500));
  }
}

void draw() {  
  background(0);
  //noStroke();
  fill(255);
  lights();
  
  for(int i = 0; i < 100; i++) {
    pushMatrix();
    translate(pos[i].x, pos[i].y, pos[i].z);
    box(100); 
    popMatrix();
  }
}
