
  /**
 *Final Project - Spaceship avoidance game 
 * User controls spaceship by left and right using keys
 * The more falling asteroids they can overcome,higher the score 
 * @version 19 May
 */

PImage SpaceShip;
Asteroid asteroid1;
Asteroid asteroid2;
Asteroid asteroid3;


//SpaceShip Position variables 
float shipX=400;
float shipY=500;

//gameState variable
boolean gameStarted=false; //until SPACE key is pressed 

void setup (){
 size (800,600);
 imageMode(CENTER);
 
SpaceShip=loadImage("SpaceShip.png");
asteroid1=new Asteroid(400,100);
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
  image(SpaceShip,shipX,shipY,120,120); 
 
  //update Y-position only if gameStarted is true
  //check if gameStarted is true
  if (gameStarted==true)
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
   shipX=shipX-20;
  } 
  
 if(keyCode==RIGHT && shipX<740) 
  {
    shipX=shipX+20;
  }
  }
// 
