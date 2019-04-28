int frogX=400;
int frogY=550;
int carX=600;
int carY=300;
void setup () {
  size(800, 600);
}
void draw() {
  background(0,0,0);
  fill(211, 70, 188);
  ellipse(frogX, frogY, 50, 50);
bob.draw();
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP&&(frogY>=5))
    {
      frogY=frogY-5;
    }
    
    else if (keyCode == DOWN&&(frogY<=height-5))
    {
      frogY=frogY+5;
    } 
    
    else if (keyCode == RIGHT&&(frogX<width-5))
    {
      frogX=frogX+5;
    } 
    
    else if (keyCode == LEFT&&(frogX>5))
    {
      frogX=frogX-5;
    }
  }
}
Car bob= new Car(-5,600,300,200,100);

public class Car{
  int carSpeed;
  Car(int carSpeed, int carX, int carY,int carWidth, int carHeight ){
  this.carSpeed=carSpeed;
  }
  void draw(){
   fill(234,43,5);
  rect(carX,carY,200,100);
    carX=carX+carSpeed; 
  }
  void display() 
{
      

}
}