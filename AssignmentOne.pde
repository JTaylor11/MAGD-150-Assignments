void setup(){
 size(800, 600); 
 stroke(255, 204, 0);
}

void draw(){
  background(100);
  
  fill(0, 0, 100);
  rect(300, 150, 200, 300);
  
  //doors
  rect(310, 150, 90, 300);
  rect(400, 150, 90, 300);
  
  //windows
  fill(255);
  rect(320, 170, 70, 80);
  rect(410, 170, 70, 80);
  //stroke(0);
  line(320, 210, 390, 210);
  line(410, 210, 480, 210);
  line(343, 170, 343, 250);
  line(366, 170, 366, 250);
  line(433, 170, 433, 250);
  line(456, 170, 456, 250);
  
  //woodwork
  fill(0, 0, 50);
  rect(330, 260, 50, 50);
  fill(255);
  rect(340, 270, 30, 30);
  fill(0, 0, 50);
  rect(330, 320, 50, 50);
  rect(330, 380, 50, 50);
  rect(420, 260, 50, 50);
  fill(255);
  ellipse(445, 285, 20, 20);
  fill(0);
  ellipse(445, 285, 10, 10);
  fill(0, 0, 50);
  rect(420, 320, 50, 50);
  rect(420, 380, 50, 50);
  
  //base
  fill(0, 0, 100);
  line(275, 475, 525, 475);
  beginShape();
  vertex(275, 475);
  vertex(275, 460);
  vertex(285, 460);
  vertex(300, 450);
  vertex(500, 450);
  vertex(515, 460);
  vertex(525, 460);
  vertex(525, 475);
  endShape();
  
  //light
  fill(255);
  ellipse(400, 100, 20, 40);
  fill(0, 0, 100);
  arc(400, 95, 20, 30, PI, PI*2);
  arc(400, 80, 5, 10, PI, PI*2);

  //top
  line(285, 150, 515, 150);
  beginShape();
  vertex(285, 150);
  vertex(285, 135);
  vertex(300, 135);
  vertex(300, 125);
  vertex(500, 125);
  vertex(500, 135);
  vertex(515, 135);
  vertex(515, 150);
  endShape();
  triangle(300, 125, 400, 115, 500, 125);
  beginShape();
  vertex(380, 118);
  vertex(380, 113);
  vertex(390, 110);
  vertex(410, 110);
  vertex(420, 113);
  vertex(420, 118);
  endShape();
  
  //handle
  noStroke();
  fill(150);
  beginShape();
  vertex(405, 280);
  vertex(405, 285);
  vertex(407, 286);
  vertex(407, 296);
  vertex(405, 297);
  vertex(405, 302);
  vertex(410, 302);
  vertex(410, 297);
  vertex(408, 296);
  vertex(408, 286);
  vertex(410, 285);
  vertex(410, 280);
  endShape();
  
  //light beam
  noStroke();
  fill(255, 204, 0);
  triangle(400, 100, mouseX, 75, mouseX, 125);
  
  //light bulb
  stroke(255, 204, 0);
  strokeWeight(4);
  point(400, 97);
  point(400, 105);
  
  //time vortex effect
  strokeWeight(abs(pmouseX-mouseX));
}

void mousePressed(){
  //additional time vortex effect
 background(0, 0, 200); 
}


void keyPressed(){
  //additional time vortex effect
  background(200, 0, 0);
}
