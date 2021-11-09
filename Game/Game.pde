PImage grassBlock;
PImage background1;
PImage background2;
PImage hero;
PImage heroR;
PImage singleTreeD;
PImage forest;

float forestX = 0;
float heroX = 900;
float heroY = 450;
float backgroundX = -1100;
float backgroundY = -450;

int button1X = 750;
int button1Y = 315;

int button2X = 750;
int button2Y = 500;

boolean forestL = true;
boolean forestR = false;
boolean startGame = false;
boolean controlsMenu = false;
boolean startMenu = true;
boolean gameOn = false;
boolean pauseMenu = false;


void setup() {
  size(1800, 900);                    
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  hero = loadImage("hero.png");
  heroR = loadImage("heroReverse.png");
  singleTreeD = loadImage("singleTreeD.png");
  forest = loadImage("forest.png");
  frameRate(600);
  
}

void draw() {
  if(startMenu == true){
    startBackground();
    startPannel();
    button1();
    button2();
  }
  
  if(startGame == true){
    drawGrass();
    background1();
    background2();
    wasd();  
  }
  
}

void background1(){
  image(background1,backgroundX,backgroundY,1800 + 1800,900+900);
}

void background2(){
   image(background2,backgroundX,backgroundY,1800 + 1800,900+900);
}

void drawGrass(){
  for(int j = 0; j<= 1800; j+=15){ //draw grass blocks
  for(int i = 0; i<= 900; i+=15){
    image(grassBlock, -4 + j , -1 +i);
  }
  }
}

void wasd(){
  if(keyPressed){
    if(key == 'w' || key == 'W'){
      if(backgroundY >= -10){
        if(heroY >=180){
        heroY -= 20;
        }
      }
      if(backgroundY < -10){
        backgroundY += 20;
        image(hero,heroX,heroY,32+32,110/3+32,17,17,32,32);
      }
      else{
        image(hero,heroX,heroY,32+32,110/3+32,17,17,32,32);
      }
    }

     
     
     if(key == 'a' || key == 'A'){
      if(backgroundX < -10){
        backgroundX += 20;
        image(hero,heroX,heroY,32+32,((110/3)+((110/3)))+5,0,0,17,17);
      }
      else{
        image(hero,heroX,heroY,32+32,((110/3)+((110/3)))+5,0,0,17,17);
      }
     }

    if(key == 's' || key == 'S'){
      if(backgroundY <= -890){
        if(heroY <= 780){
          heroY +=20;
        }
      }
      if(backgroundY > -890){
        backgroundY -= 20;
        image(hero, heroX,heroY,32+3+32,110/3+((110/3)),17,32,34,47);
      }
      else{
        image(hero, heroX,heroY,32+3+32,110/3+((110/3)),17,32,34,47);
      }
    }

    
    
    if(key == 'd' || key == 'D'){
      if(backgroundX > -1790){
        backgroundX -= 20;
        image(heroR,heroX,heroY,32 + 32,(110/3+((110/3)))+5,0,0,17,17);
      }
      else{
        image(heroR,heroX,heroY,32 + 32,(110/3+((110/3)))+5,0,0,17,17);
      }
    }
  }
  if(!keyPressed){
    image(hero, heroX,heroY,32+3+32,110/3+((110/3)),17,32,34,47);
  }
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
