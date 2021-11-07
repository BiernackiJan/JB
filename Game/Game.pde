PImage grassBlock;
PImage background1;
PImage background2;
PImage hero;
int heroX = 700;
int heroY = 450;


void setup() {
  size(1800, 900);                    
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  hero = loadImage("hero.png");
}

void draw() {
  drawGrass();
  background1();
  hero();
  background2();
  w();
  
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

void hero(){
  image(hero,heroX,heroY,96/3,110/3,0,0,32/2,32/2);
}

void w(){
  if(keyPressed){
    if(key == 'w' || key == 'W'){
      heroY -= 5;
      }
    }
  }
