class Kernel {
 
 int[][] kernel; 
 int loc;
  
 Kernel(int loc, int[][] kernel) {
   this.loc = loc;
   this.kernel = kernel;
 }
 
 void apply() {
   loadPixels(); 
   // Since we are going to access the image's pixels too  
   img.loadPixels(); 
   for (int x = 0; x < img.width; x++) {
     for (int y = 0; y < img.height; y++ ) {
       // Calculate the 1D pixel location
       int loc = x + y*img.width;
       // Get the R,G,B values from image
       float r = red   (img.pixels[loc]);
       float g = green (img.pixels[loc]);
       float b = blue  (img.pixels[loc]);
       // Constrain RGB to between 0-255
       r = constrain(r,0,255);
       g = constrain(g,0,255);
       b = constrain(b,0,255);
       // Make a new color and set pixel in the window
       color c = color(r,g,b);
       pixels[loc] = c;
     }
   }
   updatePixels();
 }
  
  
}
