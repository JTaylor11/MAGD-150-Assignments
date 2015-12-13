Timer myTimer;
CShip myCShip;
Stars myStars;
int pressed = 0;
int pressedState = 0;
PImage dragon;

void setup(){
  size(800, 600);
  myTimer = new Timer(10000);
  myCShip = new CShip();
  myStars = new Stars();
  dragon = loadImage("dragon.jpeg");
}

void draw(){
  if(pressedState==1){
    background(0);
    myStars.randomizePos();
    myStars.display();
    image(dragon, 400, 50, 500, 500);
    fill(255);
    textSize(32);
    text("NOBODY CAN EVER", 400, 50);
    text("DEFEAT ME!", 400, 90);
    
    
   }else{
    background(0);
    myStars.randomizePos();
    myStars.display();
    noStroke();
    fill(255, 0, 0);
    ellipse(580, 300, 200, 50);
    fill(255);
    textSize(12);
    text("Your Time Here is Finished...", 500, 300);
    textSize(24);
    text("OH NO!", 100, 100);
    myCShip.move();
    myCShip.display();
    if(myTimer.isFinished()){
      fill(255, 127, 0);
      rect(0, 0, 800, 600);
    }
    
   }
}

void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}

class CShip{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  
  // constructor
  CShip(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
  }
  
  void display(){
    fill(#283E2C);
    ellipse(centerX, centerY, r1, 80); //ship main body
    fill(#EAEAEA);
    ellipse(centerX , centerY + offset1, r2, r2); // cockpit
    fill(#430008);
    ellipse(centerX + offsetX1 , centerY + offset2, r3, r3); //engine1
    ellipse(centerX + offsetX2 , centerY + offset2, r3, r3); //engine1
  }
  
  void move() {
    if(keyPressed){
      if(key == 'w'){
        centerY = centerY - 5;
      } 
      if(key == 'a'){
        centerX = centerX - 5;
      }
      if(key == 'd'){
        centerX = centerX + 5;
      } 
      if(key == 's'){
        centerY = centerY + 5;
      }
    }
  }
}

class Stars{
int posX, posY;

Stars(){
posX = round(random(0, 800));
posY = round(random(0, 600));
}

void randomizePos(){
  posX = round(random(0, 800));
  posY = round(random(0, 600));
}

void display(){
  strokeWeight(5);
  stroke(200);
  point(posX, posY);
}
}

class Timer{
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  // Start the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
