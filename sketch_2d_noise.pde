float inc = 0.01;
float xoff = 0;
float yoff = 0;
float zoff = 0;
void setup(){
  size(600,600);
  background(12,34,34);
  zoff = 0;
}
int index;

void draw(){
  loadPixels();
  yoff = 0;
  for(int y= 0;y < height;y++){
     xoff = 0;
     for(int x = 0;x < width;x++){
         index = (x+y*width);
         float r = noise(xoff,yoff,zoff)*255;
         color c = color(255,r,0);
         pixels[index] = c;
         xoff += inc;
         
     }
     yoff += inc;
  }
  zoff += inc;
  updatePixels();
}
