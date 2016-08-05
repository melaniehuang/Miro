/* Color Palette */
color c1 = color(38,115,202);
color c2 = color(89,185,236);
color eColor = color(30);
color sColor = color(242, 0, 26);
color lColor = color(30);

PImage donut;
PImage drumstick;

void setup(){
  size(1200,800);
  noFill();
  background(200);
  donut = loadImage("donut.png");
  drumstick = loadImage("drumstick.png");
}

void draw(){
}

void mousePressed(){
  createBase(c1, c2);
  createPaint(c1, c2);
  createLine(lColor);
  //createEllipses(8,eColor);
  createDonuts(8);
  createDrumstick(random(130,width/2),random(50, height/2));
  //createStroke(random(130,width/2),random(50, height/2),sColor);
  
}