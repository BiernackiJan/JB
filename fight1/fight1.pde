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

boolean mob1 = true;
boolean fight1 = false;
boolean gameOn = true;

int numFrames = 14;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
int x = width/2;



void setup() {
  size(1800, 900);                    
  setupDefault();
  enemy1 = loadImage("enemy1.png");
  frameRate(150);
}

void draw() {
  float mobX1 = backgroundX +1050;
  float mobY1 = backgroundY +500;

  drawGrass();
  background1();
  encounter1(mobX1, mobY1);
  background2();
  wasd();
  fight1();
}

void encounter1(float mobX1, float mobY1) {
  if (mob1 == true) {
    image(enemy1, mobX1, mobY1, 48*1.5, 48*1.5);
    if (heroX <= mobX1+60) {
      if (heroX >= mobX1) {
        if (heroY <= mobY1 + 60) {
          if (heroY >= mobY1) {
            fight1 = true;
            gameOn = false;
          }
        }
      }
    }
  }
  if (mob1 == false) {
    strokeWeight(4);
    fill(255, 25, 25);
    line(mobX1, mobY1, mobX1, mobY1 +80);
    strokeWeight(1);
    rect(mobX1 +2, mobY1+1, 60, 40);
  }
}

void fight1(){
  
  if(fight1 == true){
    background(50);
    rect(
    if(mousePressed){
      gameOn = true;
      fight1 = false;
      mob1 = false;
    }
  }
}


void mobDeath(float mobXPos, float mobYPos) {

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
