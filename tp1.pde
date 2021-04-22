void setup (){
size (200,200);
background(0);
colorMode(HSB);
colorMode(HSB,360,100,100);
smooth();
}
void draw (){
//fucsia
noStroke();
fill(330,86,93);
bezier(60,70,0,80,0,120,40,140);
//lila
fill(270,51,90);
bezier(40,140,40,160,60,200,100,140);
//azul marino
fill(210,87,89);
bezier(100,140,160,180,180,150,160,120);
//verde claro
fill(150,58,81);
bezier(140,130,200,140,220,50,140,70);
//verde manzana
fill(90,99,85);
bezier(150,60,180,-10,60,-10,140,130);
//naranja
fill(30,96,96);
bezier(60,70,10,0,90,-10,140,50);
//amarillo
fill(60,73,94);
bezier(50,60,80,-10,120,-10,150,60);
//magenta
fill(300,96,92);
bezier(50,60,20,140,20,160,110,150);
//cian
fill(180,56,83);
bezier(110,150,180,140,200,120,150,60);
//rojo
stroke(0,3,18);
fill(0,70,90);
circle(60,70,80);
//verde
fill(120,40,70);
circle(140,70,80);
//azul
fill(240,50,60);
circle(100,140,80);
}
