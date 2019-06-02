int frogX=400;
int frogY=550;
int carX=600;
int carY=300;
int carSpeed_bob=(int)random(-10, 10);
int carSpeed_bobo=(int)random(-10, 10);
int carSpeed_bobob=(int)random(-10, 10);
int carSpeed_bobobo=(int)random(-10, 10);
boolean up= false;
boolean down= false;
boolean left= false;
boolean right= false;
boolean isPlaying=true;
void setup () {
  size(800, 600);
}
void draw() {
  if (isPlaying==true) {
    background(0, 0, 0);
    move();
    fill(211, 70, 188);
    ellipse(frogX, frogY, 50, 50);
    bob.move();
    bobo.move();
    bobob.move();
    bobobo.move();
    bob.display();
    bobo.display();
    bobob.display();
    bobobo.display();
    if (intersects(bob)) {
      isPlaying=false;
    } 
    if (intersects(bobo)) {
      isPlaying=false;
    } 
    if (intersects(bobob)) {
      isPlaying=false;
    } 
    if (intersects(bobobo)) {
      isPlaying=false;
    } 
  } else {
    background(255,255,255);
    fill(0, 0, 0);
    textSize(50);
    text("Game Over", 250, 300);
  }
}
boolean intersects(Car car) {
  if ((frogY > car.getY() && frogY < car.getY()+car.getHeight() &&
    (frogX > car.getX() && frogX < car.getX()+car.getWidth()))) {
    return true;
  } else {
    return false;
  }
}
void move() {
  if (up&&(frogY>=5)) {
    frogY=frogY-3;
  } else if (down&&(frogY<=height-5)) {
    frogY=frogY+3;
  }
  if (left&&(frogX>5)) {
    frogX=frogX-3;
  } else if (right&&(frogX<width-5)) {
    frogX=frogX+3;
  }
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      up=true;
    } else if (keyCode == DOWN)
    {
      down=true;
    } else if (keyCode == RIGHT)
    {
      right=true;
    } else if (keyCode == LEFT)
    {
      left=true;
    }
  }
}
void keyReleased()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      up=false;
    } else if (keyCode == DOWN)
    {
      down=false;
    } else if (keyCode == RIGHT)
    {
      right=false;
    } else if (keyCode == LEFT)
    {
      left=false;
    }
  }
}
Car bob= new Car(carSpeed_bob, 375, 75, (int)random(100, 200), (int)random(50, 75));
Car bobo= new Car(carSpeed_bobo, 100, 275, (int)random(100, 200), (int)random(50, 75));
Car bobob= new Car(carSpeed_bobob, 750, 375, (int)random(100, 200), (int)random(50, 75));
Car bobobo= new Car(carSpeed_bobobo, 600, 450, (int)random(100, 200), (int)random(50, 75));
public class Car {
  int carSpeed;
  int carX;
  int carY;
  int carWidth;
  int carHeight;
  Car(int carSpeed, int carX, int carY, int carWidth, int carHeight ) {
    this.carSpeed=carSpeed;
    this.carX=carX;
    this.carY=carY;
    this.carWidth=carWidth;
    this.carHeight=carHeight;
  }
  void move() {
    carX=carX+carSpeed;
    if (carX<-carWidth) {
      carX=width;
    } else if (carX>width) {
      carX=-carWidth;
    }
  }
  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, carWidth, carHeight);
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getWidth() {
    return carWidth;
  }
  int getHeight() {
    return carHeight;
  }
}
