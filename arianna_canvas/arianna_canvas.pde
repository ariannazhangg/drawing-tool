//Arianna Zhang
// Block 1-2 A
// September 22 2020

//Project 4
// for the new button you have to double click it

// Variables
color selectedColor;

// colours
color lilac = #E1CAFA;
color sky = #CAF1FA;
color aqua = #CAFAE5;
color pink = #FACAF4;
color orange = #FADCAC;
color yellow = #F3FAAC;
color aquamarine = #32AFB2;
color berry = #6A3381;
color white = #FFFFFF;
color purple = #AD7CFF;

//image
PImage uwu;
boolean uwuOn;

//slider
float sliderX;
float thickness;
int sliderXX;

// new
int news;
boolean newsOn;

void setup() {
  size(1000, 780);
  strokeWeight(thickness);
  stroke(berry);
  selectedColor = lilac;
  background(255);
  
  //image
  uwu = loadImage("uwu.png");
  uwuOn = false;
  
  //slider
  fill(berry);
  sliderX = 525;
  thickness = 0;
  sliderXX = 525;
  
  // new
  newsOn = false;
  }
  
void draw() {
  
 //tool bar
 stroke(255);
 strokeWeight(1);
 fill(230, 237, 236);
 rect(0, 0, 1000, 200);
 fill (white);
 
 // new button
 newsOnOff();
 fill(aquamarine);
 strokeWeight(5);
 stroke(berry);
 rect(730, 40, 150, 50);
 textSize(30);
 textAlign(CENTER, CENTER);
 fill(white);
 text("new", 805, 60);
 fill(aquamarine);
 newstactile(730, 40, 150, 50);
 fill(white);
 text("new", 805, 60);
 
 //uwu button
 uwutactile(460, 30, 130, 60);
 uwuOnOff();
 rect(460, 30, 130, 60);
 image(uwu, 460, 30, 130, 60);
  
  //colour buttons
  strokeWeight(5);
  stroke(berry);
  tactile(100, 60, 35);  
  fill(yellow);
  circle(100, 60, 70);
  
  tactile(100, 150, 35);  
  fill(lilac);
  circle(100, 150, 70);
  
  tactile(200, 60, 35);  
  fill(pink);
  circle(200, 60, 70);
  
  tactile(200, 150, 35);  
  fill(orange);
  circle(200, 150, 70);
  
  tactile(300, 60, 35);  
  fill(sky);
  circle(300, 60, 70);
  
  tactile(300, 150, 35);  
  fill(aqua);
  circle(300, 150, 70);
  
  //indicator
  tactile(0, 0, 0);
  fill(selectedColor);
  rect (350, 30, thickness, 150);
  
  //slider
  fill(berry);
  thickness = map(sliderX, 450, 600, 0, 50);
  strokeWeight(thickness);
  line (450, 150, 600, 150);
  stactile(sliderXX, 150, 5);
  circle(sliderX, 150, 10);
}

//tactile
void tactile (int x, int y, int r)  {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke (white);
  } else {
  stroke (berry);
  }
}

//stamp tactile
void uwutactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(purple);
  } else {
    fill(white);
  }
}

//new tactile
void newstactile (int x, int y, int w, int h) {
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(sky);
    rect(730, 40, 150, 50);
  } else {
    stroke(berry);
  }
}

//slider tactile
void stactile (int x, int y, int r)  {
 if (dist(x, y, mouseX, mouseY) < r) {
  stroke (aquamarine);
  } else {
  stroke (berry);
  }
}

void mouseReleased()  {
  // slider
  controlSlider();
  
  //yellow button
  if (dist(100, 60, mouseX, mouseY) < 35) {
    selectedColor = yellow;
  } 
  
  //lilac button
  if (dist(100, 150, mouseX, mouseY) < 35) {
    selectedColor = lilac;
  }
 
  //pink button
  if (dist(200, 60, mouseX, mouseY) < 35) {
    selectedColor = pink;
  }
  
  //orange button
  if (dist(200, 150, mouseX, mouseY) < 35) {
    selectedColor = orange;
}
//sky button
  if (dist(300, 60, mouseX, mouseY) < 35) {
    selectedColor = sky;
}
//aqua button
  if (dist(300, 150, mouseX, mouseY) < 35) {
    selectedColor = aqua;
}
  // uwu button
  if (mouseX > 460 && mouseX < 590 && mouseY > 30 && mouseY < 90) {
    uwuOn = !uwuOn;
  }
  // new button
  if (mouseX > 730 && mouseX < 880 && mouseY > 40 && mouseY < 90) {
    newsOn = !newsOn;
  }
}

void mouseDragged() {
  //slider
  controlSlider();
  
 
    //image
  if (uwuOn == false){
  //line
  strokeWeight(thickness);
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
   //uwu draw
   image(uwu, mouseX, mouseY, 170, 70);
  }
}

void uwuOnOff() {
  if (uwuOn == true) {
    stroke(sky);
    strokeWeight (5);
  } else {
    stroke(berry);
    strokeWeight(5);
  }
}

void newsOnOff() {
  if (newsOn == true) {
    stroke(white);
    strokeWeight (5);
    rect (0, 202 , 1000, 780);
  } else {
    stroke(berry);
    strokeWeight(5);
  }
}

void controlSlider () {
  if (mouseX > 450 && mouseX < 600 && mouseY > 130 && mouseY < 190) {
    sliderX = mouseX;
    sliderXX = mouseX;
  }
}
