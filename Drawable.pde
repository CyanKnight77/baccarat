public abstract class Drawable
{
  protected Rect<Float> pos;
  protected color fill;
  protected color stroke;
  
  
  public Drawable()
  {
    pos = new Rect<Float>();
    setRect(0, 0, 0, 0);    
  }
  
  public abstract void draw();
  
  public void setRect(Rect<Float> r)
  {
    pos = r;
  }
  public void setRect(float x, float y, float w, float h)
  {
    pos.set(x, y, w, h);
  }
  
  public Rect<Float> getRect() { return pos; }
  
}