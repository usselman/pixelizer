color c = color(50, 220, 30);
PVector mV, loopV;
PImage img, img2;

void setup() {
  imageMode(CENTER);
  size(500, 500, P3D);

  //size(300, 300);
  img = loadImage("bg0.jpg");
  img2 = loadImage("bg1.jpg");
  //img.loadPixels();
  ////img2.loadPixels();
  //for (int i = 0; i < width; i+=1) {
  //  img.pixels[i / 100] = img.pixels[i]; 
  //  img.set(i, i + 10, c);
  //  //img2.pixels[i/10] = img.pixels[i];
  //}
  //img.updatePixels();
  //img2.updatePixels();
}

void draw() {

//  image(img, 0, 0);
//  image(img2, 50, 50);
  background(0);
  //image(img2, 50, 50);


  noFill();
  strokeWeight(3.3);
  stroke(20);
  mV = new PVector(width/2 + second(), height/2);
  for (int i = 0; i < width; i+=2) {
    for (int j = 0; j < height; j+=2) {

      loopV = new PVector(i, j);
      float d = PVector.dist(mV, loopV) *2;
      PVector v3 = mV.cross(loopV);
      float m = v3.mag();
      //loopV.mult(m);
      //i = int(m);
      //if (j%10==0) {
      //  ellipse(i, j, 5, 5);
      //}
      int x = int(m);

      //ellipse(width/2 + i, height - j, 200, 100);
      if (d > 250) {
        if (i%3 == 0 && j%3==0) {
          //ellipse(i, j, 500, 500);
          set(i, height/2, color(random(x, 255), random(x, 255), random(x, 255)));
          set(int(d), i%8, c);
          set(int(m) + i, int(m) + j, color(random(255), random(255), random(255)));
        }


        set(i, height/2, color(random(x, 255), random(x, 255), random(x, 255)));
        set(i+2, j+2, color(220, 10, 10));
        set(int(d) * 2, j, color(random(255), random(255), random(255)));
        //set(i, int(d), color(random(x, 255), random(x, 30), random(x, 20)));
        //set(j+10, int(d), c);
        //set(int(d), i%8, c);
        //set(int(m) + i, int(m) + j, color(random(255), random(255), random(255)));
      } else {
        stroke(255, 255, 255);
        strokeWeight(0.5);
        line(mouseX, mouseY, width/2, height/2);
      }
    }
    rotateZ(second());
  }
  if (mousePressed) {
    rotate(mouseX * mouseY);
  }
}
