float xoff;

void createBase(color from, color to) {
  for (int i = 0; i < height; i++) {
    stroke(lerpColor(from, to, noise(xoff)));
    line(0, i, width, i);
    xoff++;
  }
}

void createPaint(color from, color to) {
  PVector p1 = new PVector(0, 0);
  PVector p2 = new PVector(0, 0);

  for (int a = 0; a < 10; a++) {
    p1.x = random(-200, width/2+200);
    p1.y = random(-200, height+200);

    p2.x = p1.x + random(700, 900); /* these numbers will change the length of your paint strokes */
    p2.y = p1.y + random(-200, 200); /* these numbers will change the direction of your paint strokes */

    for (int i = 0; i <= random(180, 300); i++) {
      bezier(p1.x, p1.y+i, (p1.x + 60), (p1.y + random(-20, 30))+i, p2.x, p2.y+i, p2.x - 60, (p2.y + random(-30, 20))+i);
      stroke(lerpColor(from, to, noise(xoff)), 100);  
      xoff++;
    }
  }
}

void createEllipses(int ellipseNum, color eColor) {
  for (int i = 0; i < ellipseNum; i++) { 
    fill(eColor, 150);   
    float ellipseSize = random(30, 80);
    PVector ellipsePosition = new PVector(random(0, width), random(0, height));

    for (int blur = 0; blur < 10; blur++) {
      stroke(30, 150-(30*blur));
      strokeWeight(5*blur);
      ellipse(ellipsePosition.x, ellipsePosition.y, ellipseSize-blur, ellipseSize-blur);
    }
  }
  clearSettings();
}

void createStroke(float sx, float sy, color sColor) {
  for (int blur = 0; blur < 5; blur++) {  
    stroke(sColor, 130-(20*blur));
    strokeWeight(20+(9*blur));
    line(sx, sy, sx+90, sy-50);
  }

  stroke(sColor);
  strokeWeight(20);
  line(sx, sy, sx+90, sy-50); 

  clearSettings();
}

void createLine(color lColor) {
  float yoff = 0; 
  stroke(lColor);
  
  beginShape(); 
    for (float y = 0; y <= height; y += 10) {
      float x = map(noise(xoff, yoff), 0, 1, 600, 900);
      vertex(x, y); 
      yoff += 0.05;
    }
    xoff++;
  endShape();
 
  clearSettings();
}

void clearSettings() {
  strokeWeight(1);
  noStroke();
  noFill();
}






/* Image substitutes */

void createDonuts(int donutNum) {
  for (int i = 0; i < donutNum; i++) {  
    float donutSize = random(64,128);
    PVector ellipsePosition = new PVector(random(0, width), random(0, height));
    image(donut, ellipsePosition.x, ellipsePosition.y, donutSize, donutSize);
  }
  clearSettings();
}

void createDrumstick(float sx, float sy) {
  image(drumstick, sx, sy,128,128); 
  clearSettings();
}