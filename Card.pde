public enum Suit
{
  Spade, Club, Heart, Diamond
}

public class Card
{
  Suit suit;
  int cardNumber; // 1 = ace, 11 = jack, 12 = queen, 13 = king 
  
  
  
  public int getCardValue()
  {
    if(cardNumber >= 10)
      return 0;
    else
      return cardNumber;
  }
}