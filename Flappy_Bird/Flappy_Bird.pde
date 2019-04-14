int birdX=150;
int birdY=300;
int birdYVelocity = 5;
int gravity=1;
int pipeX=300;
void setup(){
  size(300, 600);
}
void draw(){ 
  background(73, 227, 225);
  fill(236, 240, 60);
  stroke(0,0,0);
  ellipse(birdX, birdY, 30,30);
birdY=birdY+birdYVelocity;
birdYVelocity=birdYVelocity+gravity;
fill(12,170,23);
rect(pipeX,0,50, 200);
pipeX=pipeX-3;
}

void mousePressed(){
  birdYVelocity=-20;
}