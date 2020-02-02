PImage img;

void setup() {
  size(1338, 694);
  img = loadImage("joker.jpg");
  background(0);
}

void draw() {  
  float x = random(width);
  float y = random(height);
  color c = img.get(int(x), int(y));
  noStroke();
  fill(c, 60);
  circle(x, y, random(10, 100));
}
