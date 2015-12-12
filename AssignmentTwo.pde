int pressed=0;
int pressedState=0;

//burden of proof
void setup(){
  size(1280, 800);
}

void draw(){
 if(pressedState==1){
   background(0, 100, 210);
   textSize(50);
   fill(0, 200, 75);
   text("Jedi's", 300, 100);
   text("exist", 560, 100);
   text("because", 800, 100);
   text("it", 250, 600);
   text("hasn't", 400, 600);
   text("been", 650, 600);
   text("unproven", 850, 600);
   fill(0);
   //mouth
   rect(450, 350, 400, 50);
   fill(255);
   //eyes
   ellipse(500, 250, 100, 50);
   ellipse(800, 250, 100, 50);
   fill(0);
   ellipse(500, 250, 50, 25);
   ellipse(800, 250, 50, 25);
 }else{
   background(0);
   textSize(50);
   fill(255, 0, 0);
   text("Watches", 200, 100);
   text("Star", 600, 100);
   text("Wars", 900, 100);
   text("for", 200, 600);
   text("the", 450, 600);
   text("first", 650, 600);
   text("time", 900, 600);
   //saber blade
   noStroke();
   fill(0, 255, 0);
   ellipse(800, 350, 600, 100);
   //saber handle
   fill(150);
   arc(300, 350, 50, 100, PI/2, PI*3/2);
   rect(300, 300, 300, 100);
   fill(0);
   ellipse(500, 350, 50, 50);
   fill(215, 0, 40);
   ellipse(500, 350, 30, 30);
 }
}

void mousePressed(){
 pressed=pressed+1;
  pressedState=(pressed%2);
}
