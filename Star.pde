class Star extends Floater{
  protected float x1, x2;
  protected float y1, y2;
  
  public Star(){
    x = (float)(Math.random()* 801);
    y = (float)(Math.random()* 801);
    Color = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  public void show(){
    direction = direction + (float)(Math.random()*PI/4);
    
    dx = cos((float)direction);
    dy = sin((float)direction);
    
    x = x + dx;
    y = y + dy;
    x1 = x + (float)(Math.random()*30 - 15);
    y1 = y + (float)(Math.random()*30 - 15);
    x2 = x + (float)(Math.random()*30 - 15);
    y2 = y + (float)(Math.random()*30 - 15);
    
    fill(Color);
    stroke(Color);
    triangle((float)x, (float)y, (float)x1, (float)y1, (float)x2, (float)y2);
  }
} 
