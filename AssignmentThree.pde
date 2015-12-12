hungryFace myHungryFace;
upsetFace myUpsetFace;
int pressed = 0;
int pressedState = 0;
PImage burger;
PImage happyBurger;
float posX = round(random(0, width));
float posY = round(random(0, height));
float xPos = 400;
float yPos = 400;
float xpos2 = 700;
float ypos2 = 300;


void setup(){
  size(800, 600);
  burger = loadImage("burger.jpeg");
  happyBurger = loadImage("happyburger.jpeg");
  myHungryFace = new hungryFace();
  myUpsetFace = new upsetFace();
}

void draw(){
  if(pressedState==1){
    background(255);
    myUpsetFace.display2();
    image(happyBurger, 225, 175, 300, 250);
    
    }else{
      background(255);
      myHungryFace.display();
      move();
      image(burger, posX, posY, 250, 200);   
    }  
}

void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}

class hungryFace{
  
hungryFace(){
 // float xPos = 400;
  //float yPos = 400;
}

void display(){
   noStroke();
  //face and head
  fill(0, 0, 255);
  ellipse(750, 300, xPos, yPos);
  //mouth
  fill(255);
  triangle(xPos+150, yPos-200, xPos+150, yPos, xPos+400, yPos-100);
  //eyes
  ellipse(700, 175, xPos-300, yPos-300);
  fill(0);
  ellipse(680, 190, xPos-350, yPos-350);
}
}

class upsetFace{
  
upsetFace(){
 // int xpos2 = 700;
  //int ypos2 = 300;
}

void display2(){
  noStroke();
  //face andd head
  fill(0, 0, 255);
  ellipse(750, 300, xpos2-300, ypos2+100);
  //mouth
  strokeWeight(3);
  stroke(0);
  line(xpos2-149, ypos2, xpos2+50, ypos2);
  //eyes
  noStroke();
  fill(255);
  ellipse(700, 175, xpos2-600, ypos2-200);
  fill(0);
  ellipse(680, 190, xpos2-650, ypos2-250);

}
}

void move(){
  posX = posX + (round(random(-10, 10)));
  posY = posY + (round(random(-10, 10))); 
}  
  
