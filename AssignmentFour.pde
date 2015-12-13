int pressed=0;
int pressedState=0;
PImage bucks;
PImage fear;
int ballDiameter=100;
float posX=392;
float posY=190;
float gravity=2.0;
float velocityY=0.5;
boolean onGround=false;

void setup(){
 size(800, 600); 
 bucks = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769783/eea1efa6-a1b4-11e5-94ad-cfc73aa8af3c.png");
 fear = loadImage("https://cloud.githubusercontent.com/assets/16229370/11769792/16c0e6e0-a1b5-11e5-87b1-102cf7c7d152.png");
}
 
void draw(){
  update();
  if(pressedState==1){
    background(0);
    //Fear the Dear everywhere. Mimics advertisement in a  way.
    for (int k=0; k<7; k++){
    for(int x=0; x<10; x++){
      image(fear, 5+x*80, 20+k*80, 73, 73);
    }
    }
     
  }else{
    background(255);
    //Buck's logo
    image(bucks, 250, 50, 285, 375);
    fill(255, 127, 0);
    //Ball in antlers
    ellipse(posX, posY, ballDiameter, ballDiameter);
    } 
}

//Ball drops to ground and will bounce with every keyPressed
void update(){
   velocityY = gravity + velocityY;
    posY = velocityY + posY;
    if(posY + (ballDiameter/2) >= (height)){
      posY = (height) - (ballDiameter/2);
    onGround = true;
    } else{
      onGround = false;
    }
   ellipse(posX, posY, ballDiameter, ballDiameter);
}

void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}

void keyPressed(){
  if(onGround){
    jump();
  }
}

void jump(){
  velocityY = -20;
}
