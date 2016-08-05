/* 
-------------------------- Inspired by JOAN MIRO'S BLEU -----------------------
..................... Sketch written originally by Mel Huang ..................
................................ melaniehuang.com .............................
...............................................................................
.##..##...####...##..##..######.......####......#####...##.......####...##..##.
.##..##..##..##..##..##..##..........##..##.....##..##..##......##..##...####..
.######..######..##..##..####........######.....#####...##......######....##...
.##..##..##..##...####...##..........##..##.....##......##......##..##....##...
.##..##..##..##....##....######......##..##.....##......######..##..##....##...
...............................................................................
-------------------------------------------------------------------------------
*/

/* Try changing a color set to (255,106,106) and (255,156,106) 
Or pick your own colours here: http://www.rgbtool.com/
Copy and paste the R,G,B values in order below */

color c1 = color(38,115,202);
color c2 = color(89,185,236);
color lColor = color(24,26,28); //jagged line colour
color eColor = color(24,26,28); //circle colour
color sColor = color(232,32,9); //stroke colour
int numberOfCircles = 8; //number of circles

void setup(){
  size(1200,900);
  background(255);
  defaultStyle();
}

void draw(){
}

void mousePressed(){
  createBase(c1, c2);
  createPaint(c1, c2);
  createLine(lColor);  
  createEllipses(numberOfCircles,eColor);
  createStroke(sColor);
  defaultStyle();
}