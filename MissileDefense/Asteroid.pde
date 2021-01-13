class Asteroid extends GameObject {
  Asteroid() {

  super(GetRandomAsteroidImage());
  
  position.x = random(width);
  position.y = 0;
  }
}
