import Complex.*;
void setup(){
  println(new Complex(3,2).Cadd(new Complex(4,-1)).dis());// (3+2i)+(4-i)
  println(new Complex(-1,4).Cmult(new Complex(3,2)).dis());// (-1+4i)*(3+2i)
  println(new Complex(6,-3).Cdiv(new Complex(2,1)).dis());// (6-3i)/(2+i)
  println(new Complex(3.2,4).Cexp().dis());// e^(3.2+4i)
  println(new Complex(5,7).Ccos().Csq().dis());// (cos(5+7i))^2
  println(new Complex(5,7).Csin().Csq().dis());// (sin(5+7i))^2
  println(new Complex(3,2).CSqrt().CLog(4).dis());// 0.5*Log(3+2i,4);
  println(new Complex(5,-2.5).CPow(new Complex(3,2)).Ctanh().dis());// tanh((5-2.5i)^(3+2i))
}
