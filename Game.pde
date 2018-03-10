public class Game
{
  public ArrayList<Card> playerHand;
  public ArrayList<Card> bankerHand;
  
  private int playerBet;

  final int cardAmount = 6 * 52;
  private Card[] baseDeck = new Card[52];
  private Card[] finalDeck = new Card[cardAmount];
  int cardIndex = 0;
  PImage[] cardBack;


  int turnCounter = 0;

  public Game()
  {
    playerHand = new ArrayList<Card>();
    bankerHand = new ArrayList<Card>();
    
    cardBack = new PImage[] 
      {
      loadImage("red_back.png"), 
      loadImage("blue_back.png"), 
      loadImage("green_back.png"), 
      loadImage("yellow_back.png")
    };
    generateDeck();
    shuffleDeck();
  }

  private void generateDeck()
  {
    int cardIndex = 0;

    for (int i = 0; i < 13; ++i)
    {
      for (int j = 0; j < 4; ++j)
      {
        baseDeck[cardIndex] = new Card(i + 1, getSuit(j), 
          loadImage(getCardImageFileName(i+1, j)));
        cardIndex += 1;
      }
    }
  }
  
  private void shuffleDeck()
  {
    for (int i = 0; i < cardAmount; ++i)
    {
      finalDeck[i] = baseDeck[i % 52];
    }

    for (int i = finalDeck.length - 1; i >= 0; i--)
    {
      int j = (int)random(0, finalDeck.length);
      Card buffer = finalDeck[i];
      finalDeck[i] = finalDeck[j];
      finalDeck[j] = buffer;
    }
  }

  private String getCardImageFileName(int cardNumber, int suitNumber)
  {
    String str = "";
    if (cardNumber == 1)
      str += 'A';
    else if (cardNumber <= 10)
      str += Integer.toString(cardNumber);
    else if (cardNumber == 11)
      str += 'J';
    else if (cardNumber == 12)
      str += 'Q';
    else if (cardNumber == 13)
      str += 'K';
    else return null;

    switch(suitNumber)
    {
    case 0: 
      str += 'S'; 
      break;
    case 1: 
      str += 'C'; 
      break;
    case 2: 
      str += 'H'; 
      break;
    case 3: 
      str += 'D'; 
      break;
    default: 
      return null;
    }

    println("loaded image: " + str);
    return str + ".png";
  }

  public void makeBet(int bet, boolean onPlayer)
  {
    
  }

  public void loop()
  {
    if(turnCounter == 0) //initial turn; deal cards
    {
      playerHand.add(finalDeck[cardIndex++]);
      playerHand.add(finalDeck[cardIndex++]);
      bankerHand.add(finalDeck[cardIndex++]);
      bankerHand.add(finalDeck[cardIndex++]);
      
      turnCounter++;
    }
    
    
  }
}