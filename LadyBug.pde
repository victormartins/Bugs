class LadyBug extends Bot{
  LadyBug(PVector position_, float angle_){
    super(position_, angle_);
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
    strokeWeight(2);
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
