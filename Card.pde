public enum Suit
{
  Spade, Club, Heart, Diamond
}
public static Suit getSuit(int i)
{
  switch(i)
  {
    case 0: return Suit.Spade;
    case 1: return Suit.Club;
    case 2: return Suit.Heart;
    case 3: return Suit.Diamond;
    default: return null;
  }
}

public class Card extends Drawable
{
  Suit suit;
  int cardNumber; // 1 = ace, 11 = jack, 12 = queen, 13 = king 
  PImage img;
  
  public Card(int number, Suit suit, PImage image)
  {
    super();
    this.img = image;
    this.cardNumber = number;
    this.suit = suit;
    
    setRect(0, 0, 80, 120);
  }
  
  public int getCardNumber() { return cardNumber; }
  
  public int getCardValue()
  {
    if(cardNumber >= 10)
      return 0;
    else
      return cardNumber;
  }
    
  public PImage getImage() { return img; }
  
  public void draw()
  {
    image(img, pos.x, pos.y, pos.w, pos.h);
  }
}