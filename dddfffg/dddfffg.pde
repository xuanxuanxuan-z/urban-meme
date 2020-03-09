PImage img;
int direction = 1;
float signal;

// Initialize ball position, size and velocity
float rx = random(width-25), ry = random(height-20);        // position
float radius = 15.0;                                 // ball radius
float diameter = radius * 2.0;
float vx = random(-5, 5), vy = random(-5, 5);        // velocity


import processing.video.*;
Capture video;
void setup() {
  size(640,480);
  noFill();
  stroke(255);
  frameRate(30);
  //img = loadImage("sea.jpg");
  video = new Capture(this, width, height);
  video.start();
}

void draw() {
  
      if (((rx + vx) > width - radius) || ((rx + vx) < radius)) vx = -vx;
    if (((ry + vy) > height - radius) || ((ry + vy) < radius)) vy = -vy;

    // update ball position
    rx = rx + vx; 
    ry = ry + vy; 
    
    // Draw ball
    //background(0, 115, 230);   

    if (video.available()) {
    video.read();
    }
  if (signal > video.width*video.height-1 || signal < 0) { 
    direction = direction * -1; 
  }

  if (mousePressed) {
    int mx = constrain(mouseX, 0, video.width-1);
    int my = constrain(mouseY, 0, video.height-1);
    signal = my*video.width + mx;
  } else {
    signal += 0.33*direction;
  }
 
  int sx = int(signal) % video.width;
  int sy = int(signal) / video.width;

  if (keyPressed) {
    set(0, 0, video);  // fast way to draw an image
    point(rx, ry);
    fill (255, 0, 0,0);
    ellipse (rx, ry, diameter, diameter); 
    //rect(sx - 5, sy - 5, 10, 10);
  } else {
    
    color c = video.get(sx, sy);
    background(c);
       fill (255, 0, 0,0);
    ellipse (rx, ry, diameter, diameter);
 
  }
}
