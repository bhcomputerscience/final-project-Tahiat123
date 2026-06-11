
class Asteroid 
{
  //attributes-instance variables 
  //asteroid position, every asteroid has its own random position 
  private float x;
  private float y;
  
  public Asteroid (float startX, float startY){
    x=startX;
    y=startY;
  }

//displays an asteroid 
public void display()
{
  fill(#767275);
  circle(x,y,40);
}
  public void move()
  {
    y+=2;
    
    if(y>height){
      y=0;
      x=random(width);
    }
    
  }
  
  
}
