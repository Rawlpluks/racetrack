//RACER SIM
int populationSize = 100;
CarSystem carSystem       = new CarSystem(populationSize);

//Black = racetrack
//White = Out of bounds
//Green = finishline

PImage raceTrack;

void setup() {
  size(1000, 1000);
  raceTrack = loadImage("racetrack.png");
  raceTrack.resize(1300,1000);
}

void draw() {
  clear();
  fill(255);
  rect(0,50,1000,1000);
  image(raceTrack,-250,0);  
  
  carSystem.updateAndDisplay();
  carSystem.kill();
  
  fill(0,0,250);
  ellipse(260,260,10,10);
}
