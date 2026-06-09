/**
 *Final Project - Spaceship avoidance game 
 * User controls spaceship by left and right using keys
 * The more falling asteroids they can overcome,higher the score 
 * @version 19 May
 */

PImage SpaceShip;
Asteroid asteroid1;


//SpaceShip Position variables 
float shipX=400;
float shipY=360;

//gameState variable
boolean gameStarted=false; //until SPACE key is pressed 

void setup (){
 size (800,600);
 imageMode(CENTER);
 
SpaceShip=loadImage("SpaceShip.png");
asteroid1=new Asteroid(400,100);
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
  asteroid1.display();
  
  //update Y-position only if gameStarted is true
  //check if gameStarted is true
  if (gameStarted==true)
  {
  shipY=shipY-2;
  
  }
 }
  
 void keyPressed() 
  {
  if(key ==' '){
      gameStarted=true;
 
 }
 //user control - left and right 
 if(keyCode==LEFT)
 {
   shipX=shipX-20;
  } 
  
 if (keyCode==RIGHT) 
  {
    shipX=shipX+20;
  }
  }
// 
