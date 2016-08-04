/*
 * A Joan Miro experiment
 * Modern Art series - Melanie Huang
 */
 
PVector p1 = new PVector(0, 0);
PVector p2 = new PVector(0, 0);
PVector p3 = new PVector(0, 0);
PVector p4 = new PVector(0, 0);

color from;
color to;
color interA;

float xoff;
int num;
int circles;
float yoff;

void setup(){
  size(1200,800);
  noStroke();
  background(38,115,202);

  num = 10;
  circles = 4;
  yoff = 0.0; 

  from = color(38,115,202);
  to = color(89,185,236);  
  
  createBase();
}

void draw(){
}

void createBase() {
  for (int b = 0; b < height; b++) {
    xoff = xoff + 1;
    float n = noise(xoff);   
    noFill();
    interA = lerpColor(from, to, n);  
    line(0,b,width,b);
    stroke(interA);
  }
}

void createPaint() {
  for (int a = 0; a < num; a++){
    p1.x = random(-200,width/2+200);
    p1.y = random(-200, height+200);
   
    p2.x = p1.x + 60;
    p2.y = p1.y + random(-20,30);
   
    p3.x = p1.x + random(700,900); //length
    p3.y = p1.y + random(-200,200); //direction
   
    p4.x = p3.x - 60;
    p4.y = p3.y + random(-30,20);

    float rand = random(180,300);
   
    for(int i = 0; i <= rand; i++) {
      xoff = xoff + 1;
      float n = noise(xoff);   
      noFill();
      strokeWeight(1);
      interA = lerpColor(from, to, n);  
      bezier(p1.x, p1.y+i, p2.x, p2.y+i, p3.x, p3.y+i, p4.x, p4.y+i);
      stroke(interA, 150);  
    }
   }
}

void createLine() {
  strokeWeight(1);
  stroke(0);
  noFill();

  beginShape(); 
  float yoff = 0;      
  float y;
  
  for (y = 0; y <= height; y += 10) {
    float x = map(noise(xoff, yoff), 0, 1, 600,900);
    vertex(x, y); 
    yoff += 0.05;
  }
  
  xoff += 1;
  endShape();
}

void createEllipses(){
  for (int e = 0; e < circles; e++) {
    float ex = random(100, width/2-100);
    float ey = random(100, height-100);
    float r = random(20,40);
     
    fill(30,100);    
    for (int blur = 0; blur < 10; blur++){  
      stroke(30,150-(15*blur));
      strokeWeight(4*blur);
      ellipse(ex,ey,r,r);
    }
   } 
  
  //for (int a = 0; a < circles; a++) {     
  //  float ex = random(width/2, width-100);
  //  float ey = random(100, height-100);
  //  float r = random(40,50);
     
  //  fill(30,100);
  //  for (int blur = 0; blur < 10; blur++){  
  //    stroke(30,150-(15*blur));
  //    strokeWeight(6*blur);
  //    ellipse(ex,ey,r,r);
  //  }
  // } 
   
   float lx = random(130,width/2);
   float ly = random(50, height/2);
  
   for (int blur = 0; blur < 5; blur++){  
     stroke(242, 0, 26, 130-(20*blur));
     strokeWeight(20+(9*blur));
     line(lx, ly, lx+90, ly-50); 
   }
     
   stroke(242, 0, 26);
   strokeWeight(20);
   line(lx, ly, lx+90, ly-50); 
}

void mousePressed() {
  createBase();
  createPaint();
  createLine();
  createEllipses();
}