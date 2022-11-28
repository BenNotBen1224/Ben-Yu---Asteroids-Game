class Floater{
  protected double x, y;
  protected double dx, dy;
  protected double direction;
  protected int vertice;
  protected int [] X_vertice;
  protected int [] Y_vertice;
  protected color Color;
  
  public Floater(){
    
  }
  
  public void operations(/*double Acceleration, double ddirection*/){
    /*
    dx = dx + Acceleration*Math.cos(direction);
    dy = dy + Acceleration*Math.sin(direction);
    direction = direction + ddirection;
    */
    
    x = x + dx;
    y = y + dy;
    
    if(x > width)
      x = 0;
    if(x < 0)
      x = width;
    if(y > height)
      y = 0;
    if(y < 0)
      y = height;
  }
  
  public void show(){
    fill(Color);
    stroke(Color);
    
    translate((float)x,(float)y);
    rotate((float)direction);
    
    beginShape();
    for(int i = 0; i < vertice; i = i + 1){
      vertex(X_vertice[i], Y_vertice[i]);
    }
    endShape(CLOSE);
  
    rotate(-1 * (float)direction);
    translate(-1 * (float)x, -1 * (float)y);
  }
  
  //Adjust Acceleration
  protected float a;
  
  public double getx(){
    return x;
  }
  public void setx(int i){
    x = i;
  }
  public double gety(){
    return y;
  }
  public void sety(int i){
    y = i;
  }
  public double getdx(){
    return dx;
  }
  public void setdx(float i){
    dx = dx + i;
  }
  public double getdy(){
    return x;
  }
  public void setdy(float i){
    dy = dy + i;
  }
  public double getdirection(){
    return direction;
  }
  public void setdirection(double i){
    direction = i;
  }
  public int getvertice(){
    return vertice;
  }
  public void setvertice(int i){
    vertice = vertice + i;
  }
  public color getColor(){
    return Color;
  }
  public void setColor(float x, float y, float z){
    Color = color(x, y, z);
  }
}
