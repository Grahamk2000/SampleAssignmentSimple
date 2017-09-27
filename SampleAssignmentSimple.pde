//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

float state = 1;
float timeToWait;
float time;


// this is a test
void setup() {
  size(600, 600);
  time = 750;
  //timeToWait = time;
}

void draw() {
  
  background(255);
  whatIsTheState();
  
}

void whatIsTheState() {
  
    if (millis() > timeToWait) {
    timeToWait += time;
    state += 1;
    if (state == 4) {
      state = 1;
    }
  }  
  drawOutlineOfLights();
  drawLights();
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
  
  //lights
  fill(255);
  ellipse(width/2, height/2 - 65, 50, 50); //top
  ellipse(width/2, height/2, 50, 50); //middle
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}


void drawLights() {
  // state 1 = green
  if (state == 1) {
    fill(0, 255, 0);  
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
    //time = 1000;
    
  }
    
  
  
  // state 2 = yellow
  if (state == 2) {
    fill(#ffe24e);
    ellipse(width/2, height/2, 50, 50); //middle
    //time = 1000;
  }
  
  // state 3 = red
  if (state == 3) {
    fill(255, 0, 255);
    ellipse(width/2, height/2 - 65, 50, 50); //top
    //time = 1000;  
  }
    
}