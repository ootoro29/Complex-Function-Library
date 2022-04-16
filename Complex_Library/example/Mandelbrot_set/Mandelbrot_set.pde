//Mandelbrot set by using Complex library
//ootoro29

import Complex.*;
void setup(){
  size(500,500);
  colorMode(HSB);
  noSmooth();
}
double g = 0.5;
double x = 0,y = 0;
void draw(){
  if(w)y -= (0.05);
  if(s)y += (0.05);
  if(a)x -= (0.05);
  if(d)x += (0.05);
  if(q)g += 0.1;
  if(e)g -= 0.1;
  if(g > 1.2)g = 1.2;
  if(g < 0.1)g = 0.1;
  loadPixels();
  for(int j= 0; j < 500; j++){
    for(int i = 0; i < 500; i++){
      Complex c = new Complex((-2.5+i/100.0 + x)*g,(-2.5+j/100.0 + y)*g);
      Complex z = new Complex(0,0);
      int control = -1;
      for(int k = 0; k < 100; k++){
        z = z.Csq().Cadd(c);
        if(z.Cabs() > 2){
          control = k;
          break;
        }
      }
      if(control == -1){
        pixels[i+j*500] = color(0);
      }else{
        int h = (int)map(sqrt(control),0,10,0,255);
        pixels[i+j*500] = color(h,255,255);
      }
    }
  }
  updatePixels();
}
boolean w,a,s,d,q,e;
void keyPressed(){
  if(key == 'w')w =true;
  if(key == 'a')a =true;
  if(key == 's')s =true;
  if(key == 'd')d =true;
  if(key == 'q')q =true;
  if(key == 'e')e =true;
}
void keyReleased(){
  if(key == 'w')w =false;
  if(key == 'a')a =false;
  if(key == 's')s =false;
  if(key == 'd')d =false;
  if(key == 'q')q =false;
  if(key == 'e')e =false;
}
