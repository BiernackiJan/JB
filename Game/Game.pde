PImage grassBlock;
PImage grassMudBlockS;
PImage grassMudBlockL;
PImage rockBig;
PImage rockSmall;


void setup() {
  size(1800, 900);                      
  grassBlock = loadImage("grassBlock.png");
  grassMudBlockS = loadImage("grassMudBlockSmall.png");
  grassMudBlockL = loadImage("grassBlockLarge.png");
  rockBig = loadImage("rockBig.png");
  rockSmall = loadImage("rockSmall.png");
}

void draw() {
  for(int j = 0; j<= 1800; j+=15){ //draw grass blocks
  for(int i = 0; i<= 900; i+=15){
    image(grassBlock, -4 + j , -1 +i);
    }
  }
  image(rockBig, 50,50);
}
