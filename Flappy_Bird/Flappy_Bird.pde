int birdX=50;
int birdY=300;
int birdYVelocity = 5;
int gravity=1;
int pipesX=300;
int upperPipeHeight=(int)random (100, 300);
int lowerPipeHeight=600;
int pipeGap=200;
boolean isPlaying=true;
int score=0;
void setup() {
  size(300, 600);
}
void draw() { 
  if (isPlaying==true) {
    background(73, 227, 225);
    fill(236, 240, 60);
    stroke(0, 0, 0);
    ellipse(birdX, birdY, 30, 30);
    birdY=birdY+birdYVelocity;
    birdYVelocity=birdYVelocity+gravity;
    fill(12, 170, 23);
    rect(pipesX, 0, 50, upperPipeHeight);
    pipesX=pipesX-3;
    teleportPipes();
    fill(12, 170, 23);
    rect(pipesX, upperPipeHeight+pipeGap, 50, lowerPipeHeight);
    rect(0, 550, 300, 50);

    fill(255, 255, 255);
    textSize(50);
    text(score, 220, 595);

    if (intersectsObject()==true) {
      isPlaying=false;
    }
  } else {
    background(0, 0, 0);
    fill(255, 255, 255);
    textSize(50);
    text("Game Over", 15, 300);
   fill(255, 255, 255);
    textSize(50);
    text("Score: "+score, 50, 350); 
  }
}
void mousePressed() {
  birdYVelocity=-13;
}
void teleportPipes() {
  if (pipesX<-50) {
    pipesX=width;
    upperPipeHeight= (int)random (100, 300);
    score=score+1;
  }
}
boolean intersectsObject() { 
  if (birdY < upperPipeHeight && birdX > pipesX && birdX < (pipesX+50)) {
    return true;
  } else if (birdY>upperPipeHeight+pipeGap && birdX > pipesX && birdX < (pipesX+50)) {
    return true;
  } else if (birdY>600) {
    return true;
  } else { 
    return false;
  }
}