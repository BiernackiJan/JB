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
float speed = 15;

boolean startGame = true;
boolean heroYCentre = true;
boolean heroXCentre = true;





PImage enemy1;

int numFrames = 14;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
int x = width/2;



void setup(){
  size(1800, 900);                    
  setupDefault();
  enemy1 = loadImage("enemy1.png");
}

void draw(){
  drawGrass();
    background1();
    image(enemy1,backgroundX +1050,backgroundY+500,48*1.5,48*1.5);
    background2();
    wasd();
  
}




void mobDeath(int mobXPos, int mobYPos){
  
  images[0]  = loadImage("01.png");
  images[1]  = loadImage("01.png");
  images[2]  = loadImage("02.png"); 
  images[3]  = loadImage("02.png"); 
  images[4]  = loadImage("03.png");
  images[5]  = loadImage("03.png");
  images[6]  = loadImage("04.png"); 
  images[7]  = loadImage("04.png"); 
  images[8]  = loadImage("05.png");
  images[9]  = loadImage("05.png");
  images[10] = loadImage("06.png");
  images[11] = loadImage("06.png"); 
  images[12] = loadImage("07.png"); 
  images[13] = loadImage("07.png");
  
  currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
    image(images[(currentFrame) % numFrames], mobXPos, mobYPos);
}
