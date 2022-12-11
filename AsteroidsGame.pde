/*
1. COM is inaccurate
*/

Spaceship ship = new Spaceship();
Star [] star = new Star [200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid> ();
ArrayList <Bullet> bullet = new ArrayList <Bullet> ();

int count1, life;
int count2;

void setup(){
  size(800, 800);
  textAlign(CENTER);
  
  for(int i = 0; i < star.length; i = i + 1){
    star[i] = new Star();
  }
  for(int i = 0; i < 6; i = i + 1){
    asteroid.add(new Asteroid());
  }
}

void draw(){
  background(255);
  frameRate(20);
  
  for(int i = 0; i < star.length; i = i + 1){
    star[i].show();
    
    if(dist(ship.getx(), ship.gety(), star[i].getx(), star[i].gety()) < ship.getcirculardistance()){
      star[i] = new Star();
      if(life > 0)
        count2 = count2 + 1;
    }
  }
  
  ship.operations();
  ship.show();
  ship.mouseMoved();
  
  for(int i = 0; i < asteroid.size(); i = i + 1){
    asteroid.get(i).operations();
    asteroid.get(i).show();
    
    if(asteroid.get(i).getshipdistance() < asteroid.get(i).getr()/2){
      asteroid.remove(i);
      count1 = count1 + 1;
      asteroid.add(new Asteroid());
    }
    
    life = 5 - count1;
    if(life > 0){
      fill(0);
      textSize(20);
      text("Number of Life Left: " + life, 120, 30);
    }
    
    fill(0);
    textSize(20);
    text("Score: " + count2, 50, 60);
    
    if(count1 > 4){
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
  
  if(mousePressed){
    bullet.add(new Bullet());
  }
  
  for(int i = bullet.size() - 1; i >= 0; i = i - 1){
    bullet.get(i).operations();
    bullet.get(i).show();
    
    if(bullet.get(i).getx() < 0 || bullet.get(i).getx() > 800 || 
       bullet.get(i).gety() < 0 || bullet.get(i).gety() > 800){
         bullet.remove(i);
       }
  }
  
  for(int i = bullet.size() - 1; i >= 0; i = i - 1){
    //repeat 6 times
    for(int l = 0; l < 6; l = l + 1){
      if(key == 'f'){
        bullet.get(i).operations();
        bullet.get(i).show();
      }
    }
    
    for(int k = asteroid.size() - 1; k >= 0; k = k - 1){
      if(dist(bullet.get(i).getx(), bullet.get(i).gety(), asteroid.get(k).getx(), asteroid.get(k).gety())
      < asteroid.get(k).getr()/2){
        bullet.remove(i);
        asteroid.remove(k);
        asteroid.add(new Asteroid());
        break;
      }
    }
  }
}

boolean w, a, s, d, x;
  
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
   
  if(key == ' ' || key == 'b'){
     ship.setx(400);
     ship.sety(400);
   }
    
  //hyperspace
  if(key == 'h'){
    ship.setx((int)(Math.random()*801));
    ship.sety((int)(Math.random()*801));
    ship.setdirection((float)(Math.random()*2*PI));
    ship.setdx1(0);
    ship.setdy1(0);
   }
    
   if(key == 'b'){
     count1 = 0;
     count2 = 0;
     ship.setdirection((float)(Math.random()*2*PI));
     ship.setdx1(0);
     ship.setdy1(0);
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
