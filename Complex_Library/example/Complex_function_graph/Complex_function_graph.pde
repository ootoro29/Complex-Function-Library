import Complex.*;
void setup() {
  size(600, 600);
  colorMode(HSB);
}
void draw() {
  loadPixels();
  for (int j = 0; j < 600; j++) {
    for (int i = 0; i < 600; i++) {
      Complex z = new Complex(-300+i, -300+j);
      float h = 0;
      if (F(z).Carg() > 0) {
        h = (float)(F(z).Carg()/(2*PI))*255;
      } else {
        h = (float)(F(z).Carg()/(2*PI))*255 + 255;
      }
      double abs = F(z).Cabs();
      double dd = degrees((float)(F(z).Carg())) + 180;
      pixels[i+j*600] = color(h, (float)(500/Math.pow((abs-1.5)-Math.round((abs-1.5)/3)*3, 4)), (float)(600000000/Math.pow(Math.abs((dd-15)-Math.round((dd-15)/30)*30), 6)));
    }
  }
  updatePixels();
}
Complex F(Complex z) {
  return z.CPow(new Complex(0.5,0));
}
