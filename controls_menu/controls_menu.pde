PImage forest;

float forestX = 0;

int button3X = 750;
int button3Y = 315;

boolean forestL = true;
boolean forestR = false;
boolean startMenu = false;
boolean controlsMenu = true;

void setup(){
  size(1800,900);
  forest = loadImage("forest.png");
}

void draw(){
  startBackground();
  startPannel();
  button3();
  controls();
}

void controls(){
  fill(255,200,0);
  textSize(30);
  text("w = walk up", 830,490);
  text("a = walk left", 830,540);
  text("s = walk down",830,590);
  text("d = walk right",830,640);
}

void button3(){
  noStroke();
  fill(230,240,255);
  rect(button3X,button3Y,350,130);
  fill(0);
  textSize(50);
  
  if(mouseX >= button3X){
    if(mouseX <= button3X + 350){
      if(mouseY >= button3Y){
        if(mouseY <= button3Y+130){
          fill(255,170,0,60);
          rect(button3X +5,button3Y+5,345,125);
          if(mousePressed){
            startMenu = true;
          }
        }
      }
    }
  }
  fill(0);
  text("Start Menu",800,400);
}

void startBackground(){
  if(forestX >= 0){
    forestL = true;
    forestR = false;
  }
  
  if(forestL == true){
    forestX -= 2.5;
  }
    
  if(forestX <= -500){
    forestL = false;
    forestR = true;
  }
  
  if(forestR == true){
    forestX += 2.5;
  }
    
    image(forest,forestX,0,384*3,320*3);
    image(forest,forestX+(384*3),0,384*3,320*3);
}

void startPannel(){
  fill(140);
  rect(700,275,450,400);
}
