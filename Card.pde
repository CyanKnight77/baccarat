public enum Suit
{
  Spade, Club, Heart, Diamond
}

final PImage[] cardBack = new PImage[] {
  loadImage("red_back.png"),
  loadImage("blue_back.png"),
  loadImage("green_back.png"),
  loadImage("yellow_back.png")
};
public class Card
{
  Suit suit;
  int cardNumber; // 1 = ace, 11 = jack, 12 = queen, 13 = king 
  PImage img;
  
  
  public int getCardValue()
  {
    if(cardNumber >= 10)
      return 0;
    else
      return cardNumber;
  }
}