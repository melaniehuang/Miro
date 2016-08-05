float xoff;

void createBase(color from, color to) {
  for (int i = 0; i < height; i++) {
    stroke(lerpColor(from, to, noise(xoff)));
    line(0, i, width, i);
    xoff++;
  }
}

void createPaint(color from, color to) {
  for (int a = 0; a < 10; a++) {
    PVector p1 = new PVector(random(-200, width/2+200), random(-200, height+200));
    PVector p2 = new PVector(p1.x + random(700, 900), p1.y + random(-200, 200));

    for (int i = 0; i <= random(180, 300); i++) {
      bezier(p1.x, p1.y+i, (p1.x + 60), (p1.y + random(-20, 30))+i, p2.x, p2.y+i, p2.x - 60, (p2.y + random(-30, 20))+i);
      stroke(lerpColor(from, to, noise(xoff)), 100);  
      xoff++;
    }
  }
}

void createEllipses(int ellipseNum, color eColor) {
  for (int i = 0; i < ellipseNum; i++) {   
    PVector ellipsePosition = new PVector(random(0, width), random(0, height));
    float ellipseSize = random(30, 80);
    fill(eColor, 150); 
    
    for (int blur = 0; blur < 20; blur++) {
      stroke(eColor, 150-(20*blur));
      strokeWeight(6*blur);
      ellipse(ellipsePosition.x, ellipsePosition.y, ellipseSize-blur, ellipseSize-blur);
    }
  }
}

void createStroke(color sColor) {
  PVector sPoint = new PVector(random(130,width/2),random(50, height/2)); 
  PVector sDestination = new PVector(120,60);
  
  for (int blur = 0; blur < 5; blur++) {  
    stroke(sColor, 130-(20*blur));
    strokeWeight(20+(9*blur));
    line(sPoint.x, sPoint.y, sPoint.x+sDestination.x, sPoint.y-sDestination.y);
  }
}

void createLine(color lColor) {
  float yoff = 0; 
  stroke(lColor);
  
  beginShape(); 
    for (float y = 0; y <= height; y += 10) {
      float x = map(noise(xoff, yoff), 0, 1, width/4*3, height/2);
      vertex(x, y); 
      yoff += 0.05;
    }
    xoff++;
  endShape();
}

void defaultStyle() {
  strokeWeight(1);
  noStroke();
  noFill();
}

/* Image functions */
void createDonuts(PImage imageName, int howMany) {
  for (int i = 0; i < howMany; i++) {  
    float donutSize = random(64,128);
    PVector ellipsePosition = new PVector(random(0, width), random(0, height));
    image(imageName, ellipsePosition.x, ellipsePosition.y, donutSize, donutSize);
  }
}

void createDrumstick(PImage imageName, int imageSize) {
  PVector dPos = new PVector (random(130,width/2),random(50, height/2));
  image(imageName, dPos.x, dPos.y, imageSize, imageSize); 
}