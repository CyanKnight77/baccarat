ArrayList<Card> playerHand;
ArrayList<Card> bankerHand;

final int cardAmount = 6 * 52;
Card[] baseDeck = new Card[52];
PImage[] cardBack;

void setup()
{
  size(600, 600);
  generateDeck();
  
  cardBack = new PImage[] 
  {
    loadImage("red_back.png"),
    loadImage("blue_back.png"),
    loadImage("green_back.png"),
    loadImage("yellow_back.png")
  }; //<>//
}

void generateDeck()
{
  int cardIndex = 0;
  
  for(int i = 0; i < 13; ++i)
  {
    for(int j = 0; j < 4; ++j)
    {
      baseDeck[cardIndex] = new Card(i + 1, getSuit(j), 
                                     loadImage(getCardImageFileName(i+1, j)));
    }
  }
}

String getCardImageFileName(int cardNumber, int suitNumber)
{
  String str = "";
  if(cardNumber == 1)
    str += 'A';
  else if(cardNumber <= 10)
    str += Integer.toString(cardNumber);
  else if(cardNumber == 11)
    str += 'J';
  else if(cardNumber == 12)
    str += 'Q';
  else if(cardNumber == 13)
    str += 'K';
  else return null;
    
  switch(suitNumber)
  {
    case 0: str += 'S'; break;
    case 1: str += 'C'; break;
    case 2: str += 'H'; break;
    case 3: str += 'D'; break;
    default: return null;
  }
  
  return str + ".png";
}

void draw()
{
  background(0);
  
}