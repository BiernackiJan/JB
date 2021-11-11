int numFrames = 14;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
int x = width/2;
    
void setup() {
  size(640, 360);
  frameRate(14);
  
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
  // If you don't want to load each image separately
  // and you know how many frames you have, you
  // can create the filenames as the program runs.
  // The nf() command does number formatting, which will
  // ensure that the number is (in this case) 4 digits.
  //for (int i = 0; i < numFrames; i++) {
  //  String imageName = "PT_anim" + nf(i, 4) + ".gif";
  //  images[i] = loadImage(imageName);
  //}
} 
 
void draw() { 
  background(0);
  currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
    image(images[(currentFrame) % numFrames], x, height/2);
  }
