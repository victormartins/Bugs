class Bot extends Entity {
  float angle, speed, mscale;

  //constructor
  Bot(PVector position_, float angle_){
    
    speed = 1;   
    mscale = random(0.2,1);    
    position.x =  position_.x;
    position.y =  position_.y;
    angle = angle_;         
  }
  
  void render(){
    pushMatrix(); 
    scale(mscale);    
    translate(position.x, position.y);  
    rotate(angle);
    run(); 
  
//    println("P = (" +  xpos + "," +  ypos +")");    
    drawBot();
    popMatrix();
  }
  
  void run(){
    getDirection();
    position.x = int(position.x-sin(angle) * speed);
    position.y = int(position.y+cos(angle) * speed);    
  }
  
  void getDirection(){
    float r = random(1);
  
    //Invert if collision with wall
    if(position.x < 0 || position.x > width || position.y < 0 || position.y > height){
      angle = angle + PI;      
      return;
    }
    
    if( r<0.05){
      //println("r = " +r);
      angle = angle + PI/4;  
      getSpeed();
      //println("a = " + angle+ " degrees(angle) "+ degrees(angle) + "("+ (-cos(angle)) + "," + sin(angle) + ")");
    }     
  }
  
  void getSpeed(){
    speed =  1 + random(5);
  }
  
  void drawBot(){
    //Body
    fill(255,0,0);
    stroke(0);
    strokeWeight(2);    
    ellipse(0,0,20,20);        
  }
}
