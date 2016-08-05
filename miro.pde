/* Color Palette */
color c1 = color(38,115,202);
color c2 = color(89,185,236);
color eColor = color(30);
color sColor = color(242, 0, 26);
color lColor = color(30);

void setup(){
  size(1200,800);
  noFill();
  background(200);
}

void draw(){
}

void mousePressed(){
  createBase(c1, c2);
  createPaint(c1, c2);
  createEllipses(8,eColor);
  createStroke(random(130,width/2),random(50, height/2),sColor);
  createLine(lColor);
}