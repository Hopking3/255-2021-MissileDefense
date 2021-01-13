

Player thePlayer;
GameObject background;

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

// this function is called EXACTLY once:
void setup(){
  size(700, 800); // set size of window
  thePlayer  = new Player();
  background = new GameObject(loadImage("space.png"));
  background.position.x = width/2;
  background.position.y = height/2;
  
  //spawns 10 asteroids at start of round
  for(int i = 0; i < 10; i++){
   Asteroid a = new  Asteroid();
   asteroids.add(a);
  }
}
// this function is called every 1/60th of a second
// will use it to create the GAME LOOP design pattern
// each time it is called, we can think of it as a "tick"
void draw(){
  
  // === CALC TIME ===
  // calculate how much time has passed since the previous tick
  
  // === PROCESS INPUT ===
  // get all input from devices
  
  // === UPDATE ===
  // update all game objects
  
  // this is basically the UPDATE design pattern:
  thePlayer.update();
  
  // === DRAW ===
  // render all game objects
  background(0);
  background.draw();
  for(Asteroid a : asteroids) a.draw();
  thePlayer.draw();

}

PImage GetRandomAsteroidImage() {
    PImage img = null;
  int num = (int)random (0,3);
  switch(num){
   case 0:
   img = loadImage("asteroid1.png");
   break;
   case 1:
   img = loadImage("asteroid2.png");
   break;
   case 2:
   default:
   img = loadImage("asteroid3.png");
   break;
   
  }
  return img;
}
