class World{
  //time elapsed
  ArrayList bots;
  Entity[][] matrix;
  
  World(){
    matrix = new Entity[width][height]; //All entities in the world    
    bots = new ArrayList();
    for(int i = 0 ; i<50 ; i++){
      Bot b = new LadyBug(getValidPosition(),random(2*PI));
      bots.add(b);
      matrix[int(b.position.x)][int(b.position.y)] = b;
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
  
  PVector getValidPosition(){
    PVector p = new PVector();
    while(p == null || ! isPositionFree(p)){
      p = generateRandomVector();
    }
    println("Inserted Entity in ("+p.x+","+p.y+")");
    return p;
  }
  
  PVector generateRandomVector(){
      PVector p =  new PVector(int(random(width)), int(random(height)));      
      return p;
  }
  
  boolean isPositionFree(PVector p){
    return (matrix[int(p.x)][int(p.y)] == null);
  }
  
}
