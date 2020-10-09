PImage img;

void setup() {
  size(950, 844);               // set canvas size
  img = loadImage("Lionn.jpg"); // load image
  img.resize(950, 844);         // resize to fit canvas size
  background(0);                // set background to black
}

void draw() {
  for (int i=0; i< 20; i++) {           // create for loop (increasing i speeds up the drawing)    
    float x = random(width);             // declare the x variable
    float y = random(height);            // declare the y variable
    color c = img.get(int(x), int(y));   // using the color datatype & .get to find the colour of a pixel whilst also getting the x and y coordinate
    
    noStroke();     // disables the stroke
    fill(c, 200);   // fill with c & add alpha
    
    push(); // saves current drawing
    
    float l = map(brightness(c), 0, 255, 0, 15); // re-mapping (5th parameter used for the length on the ellipses, higher value = longer ellipse)
    float a = map(brightness(c), 0, 255, 0, 1000); // re-mapping (5th parameter used for number of angle variations, higher value = more variations)
    
    translate(x, y);          // displace drawn shapes by x and y
    rotate(radians(a));   // rotates ellipses
    
    ellipse(0, 0, 1.5, l); // draws the ellipse used to show image
    
    pop(); // restores the drawing from push()
  }
}
