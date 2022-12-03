Spaceship ship = new Spaceship();
Star [] star = new Star [200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid> ();

int count = 0;

void setup(){
  size(800, 800);
  textAlign(CENTER);
  
  for(int i = 0; i < star.length; i = i + 1){
    star[i] = new Star();
  }
  for(int i = 0; i < 10; i = i + 1){
    asteroid.add(new Asteroid());
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
  
  for(int i = 0; i < asteroid.size(); i = i + 1){
    asteroid.get(i).operations();
    asteroid.get(i).show();
    
    if(asteroid.get(i).getdistance() < asteroid.get(i).getr()){
      asteroid.remove(i);
      count = count + 1;
      asteroid.add(new Asteroid());
    }
  }
  
  if(count > 4){
    fill(255, 0, 0);
    textSize(150);
    text("END GAME", 400, 300);
    textSize(50);
    text("Press 'b' to restart", 400, 400);
    ship.setx((int)(400));
    ship.sety((int)(400));
    ship.setdirection(0);
  }
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
    ship.setdy2(-1.5);
  if(a == true)
    ship.setdx2(-1.5);
  if(s == true)
    ship.setdy2(1.5);
  if(d == true)
    ship.setdx2(1.5);
   
  if(key == ' '){
     ship.setx(400);
     ship.sety(400);
   }
    
   //hyperspace
   if(key == 'h'){
     ship.setx((int)(Math.random()*801));
     ship.sety((int)(Math.random()*801));
     ship.setdirection(Math.random()*2*PI);
     ship.setdx1(0);
     ship.setdy1(0);
    }
    
    if(key == 'b'){
      count = 0;
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
