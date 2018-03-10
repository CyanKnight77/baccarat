public abstract class Drawable
{
  private Rect<Float> pos;
  color fill;
  color stroke;
  
  
  public Drawable()
  {
    pos = new Rect<Float>();
    
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
  
  
}