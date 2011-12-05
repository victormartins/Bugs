class Physics{

  boolean CircleCollision(PVector p1, float r1, PVector p2, float r2 ){
    float dx = p2.x - p1.x;
    float dy = p2.y - p1.y;
    float radii = r2 - r1;
    
    return ((dx*dx) + (dy*dy) < (radii* radii));
  }
}
