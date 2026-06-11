  /**
 *Final Project - Spaceship avoidance game 
 * User controls spaceship by left and right using keys
 * The more falling asteroids they can overcome,higher the score 
 * @version 19 May
 */

final int SHIP_POSITION_CHANGE=20;
final int SHIP_SIZE=120; //WIDTH AND HEIGHT OF THE IMAGE 

PImage SpaceShip;
//object variables 
Asteroid asteroid1;
Asteroid asteroid2;
Asteroid asteroid3;


//SpaceShip Position variables 
float shipX=400;
float shipY=500;

//gameState variable
boolean gameStarted=false; //until SPACE key is pressed 
boolean gameOver=false; //until the spaceship hits an asteroid 

void setup (){
size (800,600);
imageMode(CENTER);
 
SpaceShip=loadImage("SpaceShip.png");
asteroid1=new Asteroid(400,100);//calling the constructor(instantiating the object variables)
asteroid2=new Asteroid(300,100);
asteroid3=new Asteroid(500,200);
}
 
 
 void draw(){
  background(#414A4C);
  fill(0);
  textSize(36);
  text("SAVE THE SPACESHIP!", 250, 200);

  textSize(20);
  text("Press SPACE to start", 300, 260);
  
  //draw image 
  image(SpaceShip,shipX,shipY,SHIP_SIZE,SHIP_SIZE); 
 
  //update Y-position only if gameStarted is true
  //check if gameStarted is true
  if (gameStarted==true) // the driver controls when to display the asteroids and move them 
  //based on the gameStarted state which depends on the event listener.
  {
 asteroid1.move();
 asteroid1.display();
  
 asteroid2.move();
 asteroid2.display();
  
 asteroid3.move();
 asteroid3.display();
  
  }

 }
  
 void keyPressed() 
  {
  if(key ==' '){
  gameStarted=true;
 
 }
 //user control - left and right , check boundary so not left the screen
 if(keyCode==LEFT && shipX>60)
 {
  shipX-=SHIP_POSITION_CHANGE; //changes only if user presses the left key, decrease x,to move left 
  } 
  
 if(keyCode==RIGHT && shipX<740) 
  {
    shipX+=SHIP_POSITION_CHANGE;
  }
  }
// 
 
