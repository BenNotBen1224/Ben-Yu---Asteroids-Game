/*
1. Swinging steroids (arc)
*/

Spaceship ship = new Spaceship();
Star [] star = new Star [200];

void setup(){
  size(800, 800);
  for(int i = 0; i < star.length; i = i + 1){
    star[i] = new Star();
  }
}

void draw(){
  background(255);
  frameRate(20);
  for(int i = 0; i < star.length; i = i + 1){
    star[i].show();
  }
  ship.operations();
  ship.show();
  ship.mouseMoved();
}
/*
public void keyPressed(){
    float i = 0.1;
    
    if(key == 'w')
      y = y - 2 + i;
    if(key == 'a')
      dx = dx - 2 + i;
    if(key == 's')
      dy = dy + 2 - i;
    if(key == 'd')
      dx = dx + 2 - i;
    if(key == 'a' && key == 'w'){
      x = x - 10;
      y = y - 10;
    }
    if(key == 'w' && key == 'd'){
      y = y - 10;
      x = x + 10;
    }
    if(key == 'd' && key == 's'){
      x = x + 10;
      y = y + 10;
    }
    if(key == 's' && key == 'a'){
      y = y + 10;
      x = x - 10;
    }
    if(key == ' '){
      x = 400;
      y = 400;
    }
    
    //hyperspace
    if(key == 'h'){
      x = (int)(Math.random()*801);
      y = (int)(Math.random()*801);
      direction = Math.random()*2*PI;
    }
  }
*/

boolean w, a, s, d;
  
void keyPressed(){
 if(key == 'w')
   w = true;
 if(key == 'a')
   a = true;
 if(key == 's')
   s = true;
 if(key == 'd')
   d = true;
   
 if(w == true)
   ship.setdy(-1, true);
 if(a == true)
   ship.setdx(-1, true);
 if(s == true)
   ship.setdy(+1, false);
 if(d == true)
   ship.setdx(+1, false);
}

void keyReleased(){
  if(key == 'w')
   w = false;
 if(key == 'a')
   a = false;
 if(key == 's')
   s = false;
 if(key == 'd')
   d = false;
}
