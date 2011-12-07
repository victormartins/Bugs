class Entity{
  PVector position;
  Behavior behavior;
  
  Entity(){
    position = new PVector();
    behavior = new Behavior();
  }
  
  int ref(){
    return 0;
  }
}
