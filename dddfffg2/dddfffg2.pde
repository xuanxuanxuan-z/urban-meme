  int step = 78;
  int margin = 100;
    float x11,y11;
  ball myball;
  ball myball1;
  ball myball2;
  int xx,yy;
  void setup() {
    size(700, 500);
 myball = new ball(255,255,255,0, 15, 5);
    
   
  //myball1 = new ball (0,255,0,0,100,3);
  //myball2 = new ball (0,0,255,0, 250, 2);
  }

  void draw() {
    background(150);

    int mx = xx;
    int my = yy;

    float cx = 0;
    float cy = 0;
   strokeWeight(30);
   
    noFill();
     stroke(100);
    for (int x=step/2-margin-50; x<width+margin; x+=step) {
      beginShape();
      for (int y=step/2-margin-30; y<height+margin+50; y+=step) {
        float dism = dist(mx, my, x, y);
       // float disc = dist(cx, cy, x, y);
        float x1=x-((x-mx)/dism)*1;
        float y1=y-((y-my)/dism)*1;
        curveVertex(x1, y1);
      }
      endShape();
    }
 stroke(50);
    for (int y=step/2-margin-50; y<height+margin; y+=step) {
      beginShape();
      for (int x=step/2-margin-15; x<width+margin; x+=step) {
        float dism = dist(mx, my, x, y);
      
        //float dism2 = dist(mx, my+100 , x, y+100);
       // float disc = dist(cx, cy, x, y);
     
       
       
        float x1=x;
        float y1=y+((y+my)/dism);
       //if(y>250){
       // x11=x1;
       //y11=y1;
       //}
       if(y>250&&y<350)
       {
       curveVertex(x1, y1);

       }
       else if(y>300 && y <400)
       {
       float dism1 = dist(mx, my, x, y);
       float y2=y+((y+my)/dism1)*5;
         curveVertex(x1, y2);
       }
       else if(y>400 && y <500)
       {
       float dism3 = dist(mx, my, x, y);
       float y3=y+((y+my)/dism3)*5;
         curveVertex(x1, y3);
       }
       else
       {
         curveVertex(x, y);
       }
      }
      endShape();
    }
    
println(mouseY);

noStroke();
myball.build();
  }
