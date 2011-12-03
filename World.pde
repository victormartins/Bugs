class World{
  //time elapsed
  
  World(){
    b = new Bot(200,200,0);  
  }
  
  void render(){
    drawBackground();
    b.render();
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