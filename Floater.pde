class Floater{
  protected float x, y;
  protected float dx, dy;
  protected float direction;
  protected float ddirection;
  protected int vertice;
  protected int [] X_vertice;
  protected int [] Y_vertice;
  protected color Color;
  
  public void operations(/*double Acceleration, double ddirection*/){
    /*
    dx = dx + Acceleration*Math.cos(direction);
    dy = dy + Acceleration*Math.sin(direction);
    direction = direction + ddirection;
    */
    x = x + dx;
    y = y + dy;
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
  
  public float getx(){
    return x;
  }
  public void setx(int i){
    x = i;
  }
  public float gety(){
    return y;
  }
  public void sety(int i){
    y = i;
  }
  public float getdx(){
    return dx;
  }
  public void setdx1(float i){
    dx = i;
  }
  public void setdx2(float i){
    dx = dx + i;
  }
  public void setdy1(float i){
    dy = i;
  }
  public void setdy2(float i){
    dy = dy + i;
  }
  public float getdirection(){
    return direction;
  }
  public void setdirection(float i){
    direction = i;
  }
}
