class Asteroid extends GameObject {
  
  PVector velocity = new PVector(0, 5);
  float velocityAngle = 0;
  
  Asteroid() {

  super(GetRandomAsteroidImage());
  reset();

  }
  
  void update(){
    
    position.add(velocity);
    rotation += velocityAngle;
    
    if(position.y > height){
     reset(); 
    }
  }
  
  void reset() {
  position.x = random(width);
  position.y = random(-500, -100);
  velocity.x = random(-2,2);
  velocity.y = random(2,6);
  rotation = random(0,360);
  velocityAngle = random(-10, 5);
  }
  
}
