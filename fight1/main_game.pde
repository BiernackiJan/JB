void setupDefault(){
  grassBlock = loadImage("grassBlock.png");
  background1 = loadImage("background1.png");
  background2 = loadImage("background2.png");
  hero = loadImage("hero.png");
  heroR = loadImage("heroReverse.png");
  singleTreeD = loadImage("singleTreeD.png");
  forest = loadImage("forest.png");
  frameRate(150);
}

/*void drawDefault(){
  if (startGame == true) {
    drawGrass();
    background1();
    background2();
    wasd();
  }
}
*/
void background1() {
  image(background1, backgroundX, backgroundY, 1800 + 1800/2, 900+900/2);
}

void background2() {
  image(background2, backgroundX, backgroundY, 1800 + 1800/2, 900+900/2);
}

void drawGrass() {
  for (int j = 0; j<= 1800; j+=15) { //draw grass blocks
    for (int i = 0; i<= 900; i+=15) {
      image(grassBlock, -4 + j, -1 +i);
    }
  }
}

void wasd() {
  if (keyPressed) {


    if (key == 'w' || key == 'W') {
      if (backgroundY >= -10) {
        if (heroY >= 100) {
          heroY -= speed;
        }
      }
      if (heroY == 450) {
        heroYCentre = true;
      }
      if (heroY != 450) {
        if (heroY >=160) {
          heroYCentre = false;  
          heroY -= speed;
        }
      }
      if (backgroundY < -10) {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 17, 16, 32, 32);
        if (heroYCentre == true) {
          backgroundY += speed;
        }
      } else {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 17, 16, 32, 32);
      }
    }




    if (key == 'a' || key == 'A') {
      if (backgroundX >= -10) {
        if (heroX >= 150) {
          heroX -=speed;
        }
      }
      if (heroX == 900) {
        heroXCentre = true;
      }
      if (heroX != 900) {
        if (heroX >= 180) {
          heroXCentre = false;
          heroX -= speed;
        }
      }
      if (backgroundX < -10) {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 0, 0, 17, 17);
        if (heroXCentre == true) {
          backgroundX += speed;
        }
      } 
      else if (keyPressed){
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 0, 0, 17, 17);
      }
      
      else {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 0, 0, 17, 17);
      }
    }



    if (key == 's' || key == 'S') {
      if (backgroundY <= -890/2) {
        if (heroY <= 640 + 70) {
          heroY += speed;
        }
      }
      if (heroY == 450) {
        heroYCentre = true;
      }
      if (heroY != 450) {
        if (heroY <= 640 + 40) {
          heroYCentre = false;
          heroY += speed;
        }
      }
      if (backgroundY > -890/2) {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 17, 32, 34, 47);
        if (heroYCentre == true) {
          backgroundY -= speed;
        }
      } else {
        image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 17, 32, 34, 47);
      }
    }



    if (key == 'd' || key == 'D') {
      if (backgroundX <= -1790/2) {
        if (heroX <= 1600) {
          heroX += speed;
        }
      }
      if (heroX == 900) {
        heroXCentre = true;
      }
      if (heroX != 900) {
        if (heroX <= 1600) {
          heroXCentre = false;
          heroX += speed;
        }
      }
      if (backgroundX > -1790/2) {
        image(heroR, heroX, heroY, 32 + 32/2, 110/3+32/2, 0, 0, 17, 17);
        if (heroXCentre == true) {
          backgroundX -= speed;
        }
      } else {
        image(heroR, heroX, heroY, 32 + 32/2, 110/3+32/2, 0, 0, 17, 17);
      }
    }
  }
  if (!keyPressed) {
    image(hero, heroX, heroY, 32+32/2, 110/3+32/2, 17, 32, 34, 47);
  }
}
