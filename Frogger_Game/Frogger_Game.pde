int frogX=400;
int frogY=550;
int carX=600;
int carY=300;
int carSpeed=(int)random(5, 10);
void setup () {
  size(800, 600);
}
void draw() {
  background(0, 0, 0);
  fill(211, 70, 188);
  ellipse(frogX, frogY, 50, 50);
  bob.display();
  bobo.display();
  bobob.display();
  bobobo.display();
  bob.move();
  bobo.move();
  bobob.move();
  bobobo.move();
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP&&(frogY>=5))
    {
      frogY=frogY-5;
    } else if (keyCode == DOWN&&(frogY<=height-5))
    {
      frogY=frogY+5;
    } else if (keyCode == RIGHT&&(frogX<width-5))
    {
      frogX=frogX+5;
    } else if (keyCode == LEFT&&(frogX>5))
    {
      frogX=frogX-5;
    }
  }
}
Car bob= new Car(-5, 600, 300, 200, 100);
Car bobo= new Car(-5, 600, 300, 200, 100);
Car bobob= new Car(-5, 600, 300, 200, 100);
Car bobobo= new Car(-5, 600, 300, 200, 100);
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
  }
  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, carWidth, carHeight);
  }
}
