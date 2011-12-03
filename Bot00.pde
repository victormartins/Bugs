World w;
Bot b;

void setup(){
  size(400,400);
  smooth();
  frameRate(25);
  w = new World(); 
}

void draw(){
  background(255);
  w.render();
}

