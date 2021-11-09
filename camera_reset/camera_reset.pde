PImage grassBlock;
PImage background1;
PImage background2;
PImage hero;
PImage heroR;
PImage singleTreeD;
PImage forest;
PImage trees;

float forestX = 0;
float heroX = 900;
float heroY = 450;
float backgroundX = -1100/2;
float backgroundY = -450/2;

boolean startGame = true;

boolean heroYCentre = true;
boolean heroXCentre = true;


void setup() {
  size(1800, 900);                    
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  hero = loadImage("hero.png");
  heroR = loadImage("heroReverse.png");
  frameRate(600);
  
}

void draw() {
  
  if(startGame == true){
    drawGrass();
    background1();
    background2();
    wasd();
  }
  
}

void background1(){
  image(background1,backgroundX,backgroundY,1800 + 1800/2,900+900/2);
}

void background2(){
   image(background2,backgroundX,backgroundY,1800 + 1800/2,900+900/2);
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
        if(heroY >= 100){
        heroY -= 15;
        }
      }
      if(heroY == 450){
        heroYCentre = true;
      }
      if(heroY != 450){
        if(heroY >=160){
          heroYCentre = false;  
          heroY -= 15;
        }
      }
      if(backgroundY < -10){
        image(hero,heroX,heroY,32+32/2,110/3+32/2,17,16,32,32);
        if(heroYCentre == true){
          backgroundY += 15;
        }
      }
      else{
        image(hero,heroX,heroY,32+32/2,110/3+32/2,17,16,32,32);
      }
    }
     
     
     
     
     if(key == 'a' || key == 'A'){
      if(backgroundX >= -10){
        if(heroX >= 150){
          heroX -=15;
        }
      }
      if(heroX == 900){
        heroXCentre = true;
      }
      if(heroX != 900){
        if(heroX >= 180){
          heroXCentre = false;
          heroX -= 15;
        }
      }
      if(backgroundX < -10){
        image(hero,heroX,heroY,32+32/2,110/3+32/2,0,0,17,17);
        if(heroXCentre == true){
          backgroundX += 15;
        }
      }
      else{
        image(hero,heroX,heroY,32+32/2,110/3+32/2,0,0,17,17);
      }
     }



    if(key == 's' || key == 'S'){
      if(backgroundY <= -890/2){
        if(heroY <= 640 + 70){
          heroY +=15;
        }
      }
      if(heroY == 450){
        heroYCentre = true;
      }
      if(heroY != 450){
        if(heroY <= 640 + 40){
          heroYCentre = false;
          heroY += 15;
        }
      }
      if(backgroundY > -890/2){
        image(hero, heroX,heroY,32+32/2,110/3+32/2,17,32,34,47);
        if(heroYCentre == true){
          backgroundY -= 15;
        }
      }
      else{
        image(hero, heroX,heroY,32+32/2,110/3+32/2,17,32,34,47);
      }
    }

    
    
    if(key == 'd' || key == 'D'){
      if(backgroundX <= -1790/2){
        if(heroX <= 1600){
          heroX += 15;
        }
      }
      if(heroX == 900){
        heroXCentre = true;
      }
      if(heroX != 900){
        if(heroX <= 1600){
          heroXCentre = false;
          heroX += 15;
        }
      }
      if(backgroundX > -1790/2){
        image(heroR,heroX,heroY,32 + 32/2,110/3+32/2,0,0,17,17);
        if(heroXCentre == true){
           backgroundX -= 15;
        }
      }
      else{
        image(heroR,heroX,heroY,32 + 32/2,110/3+32/2,0,0,17,17);
      }
    }
  }
  if(!keyPressed){
    image(hero, heroX,heroY,32+32/2,110/3+32/2,17,32,34,47);
  }
}
