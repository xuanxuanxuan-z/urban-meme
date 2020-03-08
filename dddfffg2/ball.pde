class ball {

float f;
float g;
float h;
int x;
int y;
int mx;
int my;
int move;
ball(float G,float H, float F, int xpos, int ypos, int mo) {
 f = F; g = G; h = H; x = xpos; y = ypos; move = mo; 
}
void build () {
     fill(f,g,h);
     
  if (mx == 0){x += move;}
  if (mx == 1){x = x - move;}
  if (x >= 700){ mx = 1; }
  if ( x <= 35){  mx = 0;}
   
  if (my == 0){y += move;}
  if (my == 1){y = y - move;}
  if (y >= 250){ my = 1;yy = y;xx = x;}
  
  if ( y <= 35){ my = 0;}
   fill(230);
   ellipse (x, y, 75, 75);
   
  }

    }
