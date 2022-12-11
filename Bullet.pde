class Bullet extends Floater{ 
  Bullet(){
    x = ship.getx();
    y = ship.gety();
    
    vertice = 10;
    X_vertice = new int [] {0, 5/5, 20/5, 10/5, 15/5, 0, -15/5, -10/5, -20/5, -5/5};
    Y_vertice = new int [] {20/5, 8/5, 8/5, -2/5, -20/5, -10/5, -20/5, -2/5, 8/5, 8/5};
  }
  
  public void operations(){
    super.operations();
    Color = color((int)(Math.random()*251),(int)(Math.random()*251),(int)(Math.random()*251));
    dx = 15*(float)(Math.cos(ship.getdirection()+PI/2));
    dy = 15*(float)(Math.sin(ship.getdirection()+PI/2));
  }
  
  public float getx(){
    return x;
  }
  public float gety(){
    return y;
  }
}
