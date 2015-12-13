int pressed = 0;
int pressedState = 0;
int Pressed = 0; //third screen
int pressedstate = 0; //third screen
Death[] deathraining;
Stars myStars;
Timer myTimer;
PImage MasterChief;
PImage Earth;
PImage Joker;
PImage Portal;
PVector ellipseCenter;
  int radius;
  float distance = 0;

void setup(){
  size(800, 600);
  //images
  MasterChief = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769881/460ca284-a1b7-11e5-920a-2e91c8bf9e0c.jpeg");
  Earth = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769853/eb6e3d06-a1b6-11e5-8cac-69fbceef969d.jpeg");
  Joker = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769888/97d147e6-a1b7-11e5-87de-7359368b1ad6.jpeg");
  Portal = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769898/c55f31b4-a1b7-11e5-96af-1f5a7e341a0f.jpeg");
  //classes
  myStars = new Stars();
  myTimer = new Timer(30000);
  //for loop for death
  deathraining = new Death[500];
  for(int x = 0; x < deathraining.length-1; x++){
    deathraining[x] = new Death(); //still need to put it in void draw!!!! assignment 9
  }
  //portal
  ellipseCenter = new PVector(200, 200);
  radius = 80;
}

void draw(){
  if(pressedState==1){
    background(0);
    myStars.randomizePos();
    myStars.display();
    //MasterChief's home getting destroyed
    image(Earth, 200, 50, 500, 500);
    fill(0, 0, 255);
    textSize(32);
    text("NOOOOOOOOOOO", 100, 575);
    noStroke();
    for(int x = 0; x < deathraining.length-1; x++){
      deathraining[x].update();
      deathraining[x].display();
    }
    
  }else{
    background(0);
    myStars.randomizePos();
    myStars.display();
    image(MasterChief, 600, 250, 200, 300);
    //portal1
    ellipseMode(RADIUS);
    noStroke();
    ellipse(ellipseCenter.x, ellipseCenter.y, radius, radius);
    strokeWeight(10);
    fill(0,0,255);
    stroke(0,0,255);
    point(mouseX, mouseY);
    float distance = dist( ellipseCenter.x, ellipseCenter.y, mouseX, mouseY );
    println(distance);
    if(distance < radius){
    fill(0, 255, 0);
    } else {
    fill(255, 0, 0);
    //end portal1
    //portal2
    image(Portal, 300, 85, 350, 240);
    fill(255);
    textSize(14);
    text("Press Mouse", 425, 325);
    fill(255);
    textSize(14);
    text("Press Key", 170, 325);
    //Dialoge from the Villain
    fill(255, 0, 0);
    textSize(24);
    text("Choose a portal. One will destroy everything you know and love,", 25, 25);
    text("and the other will kill me.", 200, 50);
    text("Choose Wisely, Chief", 25, 500);
    text("You have 30 seconds or you and everything die!", 25, 525);
 }  
    if(myTimer.isFinished()){
      fill(227, 140, 45);
      rect(0, 0, 800, 600);
    }
  
  }
  if(pressedstate==1){
    background(0);
    //Hero Winning
    fill(0, 0, 255);
    textSize(32);
    text("Good", 150, 275);
    image(MasterChief, 100, 300, 200, 300);
    //Villain Burning
    image(Joker, 450, 0, 350, 360);
    strokeWeight(10);
    stroke(255, 0, 0);
    line(450, 0, 450, 360);
    line(450, 360, 800, 360);
  }
}

//third screen
void keyPressed(){
  Pressed=Pressed+1;
  pressedstate=(Pressed%2);
}

//first and second screen
void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}

class Death{
  int sizeX, sizeY, centerX, centerY, size;
  
Death(){
  centerX = round(random(width));
  centerY = 5;
  size = round(random(25, 75));
}

void update(){
  centerX = round(random(-5, 5)) + centerX;
  centerY = centerY + 1;
}

void display(){
 fill(200, 0, 50);
 ellipse(centerX, centerY, size, size);
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
