public class Vector<T>
{
  private T x;
  private T y;
  
  public Vector(T x, T y)
  {
    set(x, y);
  }
  
  public Vector()
  {
    x = null;
    y = null;
  }
  
  public T x() { return this.x; }
  public void x(T val) { this.x = val; }
  
  public T y() { return this.y; }
  public void y(T val) { this.y = val; }
  
  public void set(T x, T y)
  {
    this.x = x;
    this.y = y;
  }
}

public class Rect<T>
{
  private T x, y, w, h;
  
  public Rect(T x, T y, T w, T h)
  {
    set(x, y, w, h);
  }
  
  public Rect()
  {
    x = null;
    y = null;
    w = null;
    h = null;
  }
  
  public T x() { return this.x; }
  public void x(T val) { this.x = val; }
  
  public T y() { return this.y; }
  public void y(T val) { this.y = val; }
  
  public T w() { return this.w; }
  public void w(T val) { this.w = val; }
  
  public T h() { return this.h; }
  public void h(T val) { this.h = val; }
  
  public void set(T x, T y, T w, T h)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
}