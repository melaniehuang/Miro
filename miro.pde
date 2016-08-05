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

color eColor = color(24,26,28); //color of the circles
color sColor = color(232,32,9); //color of the red stroke
color lColor = color(24,26,28); //color of the jagged thin line

void setup(){
  size(1200,900);
  background(c1);
  defaultStyle();
}

void draw(){ 
}

void mousePressed(){
  createBase(c1, c2);
  createPaint(c1,c2,10);
  createLine(lColor);
  /* Try adding more circles, change 8 to a larger number */
  createEllipses(8,eColor);
  createStroke(sColor);
  defaultStyle();
}