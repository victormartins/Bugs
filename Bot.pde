class Bot{
  float xpos,ypos, angle, speed;

  //constructor
  Bot(float xpos_, float ypos_, float angle_){
    xpos = xpos_;
    ypos = ypos_;
    angle = angle_; 
    speed = 1;   
    
  }
  
  void render(){
//    pushMatrix(); 
        
    translate(xpos, ypos);  
    rotate(angle);
    run(); 
  
//    println("P = (" +  xpos + "," +  ypos +")");    
    drawBot();
//    popMatrix();
  }
  
  void run(){
    getDirection();
    xpos = xpos-sin(angle) * speed;
    ypos = ypos+cos(angle) * speed;    
  }
  
  void getDirection(){
    float r = random(1);
  
    //Invert if collision with wall
    if(xpos < 0 || xpos > width || ypos < 0 || ypos > width){
      angle = angle + PI;      
      return;
    }
    
    if( r<0.05){
      println("r = " +r);
      angle = angle + PI/4;  
      getSpeed();
      println("a = " + angle+ " degrees(angle) "+ degrees(angle) + "("+ (-cos(angle)) + "," + sin(angle) + ")");
    } 
    
  }
  
  void getSpeed(){
    speed =  1 + random(5);
  }
  
  void drawBot(){
    fill(255);
    stroke(0);
    strokeWeight(2);
    
    ellipse(0,0,15,20);
    fill(0);
    ellipse(0,10,7,7);
  }

}
