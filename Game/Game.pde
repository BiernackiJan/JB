PImage grassBlock;
PImage background1;
PImage background2;
PImage hero;
PImage heroR;
int heroX = 700;
int heroY = 450;


void setup() {
  size(1800, 900);                    
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  hero = loadImage("hero.png");
  heroR = loadImage("heroReverse.png");
  frameRate(100);
  
}

void draw() {
  
  drawGrass();
  background1();
  wasd();
  background2();
 
  
  
}

void background1(){
  image(background1,0,0,1800,900);
}

void background2(){
   image(background2,0,0,1800,900);
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
      if(heroY >= 80){
        heroY -= 7;
        image(hero,heroX,heroY,96/3,110/3,17,17,32,32);
      }
    }

     if(key == 'a' || key == 'A'){
      if(heroX >= 80){
        heroX -= 7;
        image(hero,heroX,heroY,96/3,110/3,0,0,17,17);
      }
    }

    if(key == 's' || key == 'S'){
      if(heroY <= 820){
        heroY += 7;
        image(hero, heroX,heroY,96/3+3,110/3,17,64/2,34,47);
      }
    }

    if(key == 'd' || key == 'D'){
      if(heroX <= 1720){
        heroX += 7;
        image(heroR,heroX,heroY,96/3,110/3,0,0,17,17);
      }
    }
  }
  if(!keyPressed){
    image(hero, heroX,heroY,96/3+3,110/3,17,64/2,34,47);
  }
}
