Game game;

void setup()
{
  size(1200, 600);
  game = new Game(); 
  //
} //<>//

void draw()
{
  background(0);
  
  //for(int i = 0; i < 52; ++i)
  //{
  //  image(baseDeck[i].getImage(), (i * 40) % width, (int)(i/15) * 60, 40, 60);
  //}
  textAlign(CENTER);
  textSize(24);
  float textX = width/4;
  float textY = (height/8) * 6;
  text("Player", textX, textY);
  text("Banker", textX * 3, textY);  
  
  ArrayList<Card> pHand = game.playerHand;
  ArrayList<Card> bHand = game.bankerHand;
  
  if(pHand.size() != 0)
  {
    int cardValue = 0;
    for(int i = 0; i < pHand.size(); ++i)
    { 
      Card c = pHand.get(i);
      Rect<Float> r = c.getRect();
      r.x = (textX - (r.w() * (pHand.size() - 1))) + (r.w() * i);
      r.y = textY - (r.h() + 40); 
      c.draw();
      
      cardValue += c.getCardValue();
    }
    text(Integer.toString(cardValue), textX, textY + 40);
  }
  if(bHand.size() != 0)
  {
    int cardValue = 0;
    for(int i = 0; i < pHand.size(); ++i)
    { 
      Card c = bHand.get(i);
      Rect<Float> r = c.getRect();
      r.x = ((textX * 3) - (r.w() * (pHand.size() - 1))) + (r.w() * i);
      r.y = textY - (r.h() + 40); 
      c.draw();
      
      cardValue += c.getCardValue();
    }
    text(Integer.toString(cardValue), textX * 3, textY + 40);
  }
  
  game.loop();
}