/*
1. Swinging asteroids (arc)
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
   
  if(key == ' '){
     ship.setx(400);
     ship.sety(400);
   }
    
   //hyperspace
   if(key == 'h'){
     ship.setx((int)(Math.random()*801));
     ship.sety((int)(Math.random()*801));
     ship.setdirection(Math.random()*2*PI);
    }
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
