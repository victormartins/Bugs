class World{
  //time elapsed
  ArrayList bots;
  World(){
    bots = new ArrayList();
    for(int i = 0 ; i<50 ; i++){
      bots.add(new Bot(width/2,height/2,random(2*PI)) );
    }
  }
  
  void render(){
    drawBackground();
    
    for(int i = 0 ; i < bots.size() ; i++){
      Bot b = (Bot) bots.get(i);
      b.render();
    }
  }
  
  void drawBackground(){
    
    strokeWeight(1);
    stroke(200);
    fill(225);
    
    for(int i = 0; i< height/10; i++){
      for(int j = 0; j < width/10; j++){
        if( (i%2 == 0) || (j%2 == 0) ){
          rect(j*10, i*10 ,10, 10);
        }        
      }
    }      
  }
  
}
