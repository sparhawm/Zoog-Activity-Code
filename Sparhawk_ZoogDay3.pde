void setup() {
  // Set the size of the window
  size(640,360);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(255);  
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(mouseX,mouseY,100);
  rect(mouseX,mouseY,20,100);

  // Draw Zoog's head
  stroke(0);
  println(dist(mouseX,mouseY,pmouseX,pmouseY));
  fill(0,dist(mouseX,mouseY,pmouseX,pmouseY),0);
  ellipse(pmouseX,pmouseY-30,60,60); 

  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(mouseX,mouseY,100); 
  ellipse(mouseX-19,mouseY-30,16,32); 
  ellipse(mouseX+19,mouseY-30,16,32); 

  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-10,mouseY+50,pmouseX-10,pmouseY+60);
  line(mouseX+10,mouseY+50,pmouseX+10,pmouseY+60);
  // DRAW
 
  stroke(0);
  line(mouseX-10, mouseY, pmouseX-40,pmouseY);
  line(mouseX+10,mouseY, pmouseX+40,pmouseY);
  
}



void mouseMoved() {
background(255); }
