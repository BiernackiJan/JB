PImage grassBlock;
PImage background1;
PImage background2;
float backgroundX = -1100;
float backgroundY = -450;

void setup() {
  size(1800, 900);                    
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  frameRate(600);
}

void draw() {
  
  drawGrass();
  background1();
  background2();
  wasd();
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
        if(backgroundY < -10){
        backgroundY += 20;
      }
    }
    
     if(key == 'a' || key == 'A'){
      if(backgroundX < -10){
        backgroundX += 20;
      }
     }

    if(key == 's' || key == 'S'){
      if(backgroundY > -890){
        backgroundY -= 20;
      }
    }
    if(key == 'd' || key == 'D'){
      if(backgroundX > -1790){
        backgroundX -= 20;
      }
    }
  }
}
