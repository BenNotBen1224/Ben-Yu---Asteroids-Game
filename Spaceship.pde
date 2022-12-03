class Spaceship extends Floater{
  public Spaceship(){
    x = 400;
    y = 400;
    vertice = 10;
    X_vertice = new int [] {0, 5, 20, 10, 15, 0, -15, -10, -20, -5};
    Y_vertice = new int [] {20, 8, 8, -2, -20, -10, -20, -2, 8, 8};
  }
  public void operations(){
    super.operations();
    
    if(x > width)
      x = 0;
    if(x < 0)
      x = width;
    if(y > height)
      y = 0;
    if(y < 0)
      y = height;
  }
  
  public void mouseMoved(){
    if(mouseX < x){
      direction = (float)(Math.atan((mouseY - y)/(mouseX - x)) + PI/2);
    }
    else{
      direction = (float)(Math.atan((mouseY - y)/(mouseX - x)) - PI/2);
    }
  }
}
