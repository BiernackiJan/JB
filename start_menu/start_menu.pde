PImage forest;

float forestX = 0;

int button1X = 750;
int button1Y = 315;

int button2X = 750;
int button2Y = 500;

boolean forestL = true;
boolean forestR = false;
boolean startGame = false;
boolean controlsMenu = false;

void setup(){
  size(1800,900);
  forest = loadImage("forest.png");
}

void draw(){
  startBackground();
  startPannel();
  button1();
  button2();
}

void startPannel(){
  fill(140);
  rect(700,275,450,400);
}

void button1(){
  noStroke();
  fill(230,240,255);
  rect(button1X,button1Y,350,130);
  fill(0);
  textSize(50);
  
  if(mouseX >= button1X){
    if(mouseX <= button1X + 350){
      if(mouseY >= button1Y){
        if(mouseY <= button1Y+130){
          fill(255,170,0,60);
          rect(button1X +5,button1Y+5,345,125);
          if(mousePressed){
            startGame = true;
          }
        }
      }
    }
  }
  fill(0);
  text("Start Game",800,400);
}

void button2(){
  noStroke();
  fill(230,240,255);
  rect(button2X,button2Y,350,130);
  fill(0);
  textSize(50);
  
  if(mouseX >= button2X){
    if(mouseX <= button2X + 350){
      if(mouseY >= button2Y){
        if(mouseY <= button2Y+130){
          fill(255,170,0,60);
          rect(button2X +5,button2Y+5,345,125);
          if(mousePressed){
            controlsMenu = true;
          }
        }
      }
    }
  }
  fill(0);
  text("Controls",button2X + 70,button2Y + 85);
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
