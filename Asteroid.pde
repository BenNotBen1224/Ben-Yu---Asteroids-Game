class Asteroid extends Floater{
  protected float X_vertex, Y_vertex;
  protected float r;
  protected float arcstart, arcend;
  protected float COM, distance;
  
  /*
  protected ArrayList <Float> X_vertice = new ArrayList <Float> ();
  protected ArrayList <Float> Y_vertice = new ArrayList <Float> ();
  */
  
  public Asteroid(){
    x = (float)(Math.random()* 801);
    y = (float)(Math.random()* 801);
    dx = (float)(Math.random()*20 - 10);
    dy = (float)(Math.random()*20 - 10);
    r = (float)(Math.random()* 150 + 50);
    arcstart = (float)(Math.random()* 2*PI);
    arcend = arcstart + (float)(Math.random()* PI);
    direction = (float)(Math.random()*2*PI);
    Color = color((int)(Math.random()*251));
    
    COM = (2*r*(float)Math.sin((arcend - arcstart)/2))/(3*((arcend - arcstart)/2));
    
    /*
    vertice = (int)(Math.random()*5 + 2);
    X_vertex = (float)(Math.random()* 801);
    Y_vertex = (float)(Math.random()* 801);
    
    for(int i = 0; i < vertice; i = i + 1){
      X_vertice.add(X_vertex + (float)(Math.random()*20 - 10));
      Y_vertice.add(Y_vertex + (float)(Math.random()*20 - 10));
    */
  }
  
  public void operations(){
    super.operations();
    
    ddirection = (float)(Math.random()*PI/12);
    
    arcstart = arcstart + (float)ddirection;
    arcend = arcend + (float)ddirection;
    
    dx = dx + (float)(Math.random()*1 - 0.5);
    dy = dy + (float)(Math.random()*1 - 0.5);
    
    distance = dist((float)ship.getx(), (float)ship.gety(), (float)x + (float)Math.sin(((arcend - arcstart)/2))*COM, (float)y + (float)Math.cos(((arcend - arcstart)/2))*COM);
    
    if(x > width || x < 0)
      dx = -dx;
    if(y > height || y < 0)
      dy = - dy;  
  }
  
  public void show(){
    fill(Color);
    arc((float)x, (float)y, r, r, arcstart, arcend);
  }
 
  public float getx(){
    return x;
  }
  public void setx(float i){
    x = i;
  }
  public float gety(){
    return y;
  }
  public void sety(float i){
    y = i;
  }
  public float getCOM(){
    return COM;
  }
  public void setCOM(float i){
    COM = i;
  }
  public float getdistance(){
    return distance;
  }
  public void setdistance(float i){
    distance = i;
  }
  public float getr(){
    return r;
  }
  public void setr(float i){
    r = i;
  }
}
