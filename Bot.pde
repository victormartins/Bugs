class Bot{
  float xpos,ypos, angle, speed, mscale;

  //constructor
  Bot(float xpos_, float ypos_, float angle_){
    
    speed = 1;   
    mscale = random(0.2,1);    
    xpos =  xpos_;
    ypos =  ypos_;
    angle = angle_; 
    
    
  }
  
  void render(){
    pushMatrix(); 
    scale(mscale);    
    translate(xpos, ypos);  
    rotate(angle);
    run(); 
  
//    println("P = (" +  xpos + "," +  ypos +")");    
    drawBot();
    popMatrix();
  }
  
  void run(){
    getDirection();
    xpos = xpos-sin(angle) * speed;
    ypos = ypos+cos(angle) * speed;    
  }
  
  void getDirection(){
    float r = random(1);
  
    //Invert if collision with wall
    if(xpos < 0 || xpos > width || ypos < 0 || ypos > height){
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
    ellipse(0,0,15,20);
    
    noStroke();    

    //spots
    fill(0);
    ellipse(-3, 2, 4, 4);
    ellipse(3, 2, 4, 4);
    ellipse(-2, -5, 3, 3);
    ellipse(2, -5, 3, 3);
   
    //Head
    fill(0);
    ellipse(0,10,10,10);
    
    stroke(0);
    strokeWeight(0);
    
    pushMatrix();
    translate(-3,13);
    rotate(PI/6);
    line(0,0,0,5);
    popMatrix();
    
    pushMatrix();
    translate(3,13);
    rotate(-PI/6);
    line(0,0,0,5);
    popMatrix();
  }
}
