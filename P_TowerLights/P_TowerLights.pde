


PImage img;
int canvasSize = 900;


void settings() {
  
    size(canvasSize,canvasSize); 

}


void setup() {
  img = loadImage("tower.png");
  image(img, 0, 0);


}



void draw() {
  
    
    // go to center
    pushMatrix();
    translate(canvasSize/2, canvasSize/2);
    
    // draw reference dot
    ellipseMode(CENTER);    
    //fill(255,0,0);
    //ellipse(0, 0, 10, 10);
    
    float newShade = map(mouseX, 0, canvasSize, 0, 255);
    float newColor = map(mouseY, 0, canvasSize, 0, 255);
    fill(newShade, newColor,0);


    for (int i = 0; i < 6; i++) {  
      pushMatrix();
      rotate(radians(i*60));
      translate(283,0);
      ellipse(0, 0, 60, 60);
      popMatrix();
    }

  
    popMatrix();
  
    
  
  
  
  
  
  
}