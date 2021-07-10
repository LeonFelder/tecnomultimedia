//https://youtu.be/8B2L7QxnnQ8
color black=color(0), white=color(255), red=color(255, 0, 0), blue=color(0, 0, 255), green=color(0, 255, 0), firstC =black, secondC=white;
boolean blackish = true, redish, blueish, greenish;
float cdist;
int pantalla=0, s=0;
PImage beginning;
void setup() {
  size (520, 520);
  noStroke();
  textAlign(CENTER);
  imageMode(CENTER);
  beginning=loadImage("1.png");
}
void draw () {
  background(255);
  if (pantalla==0) {
    fill(0);
    textSize(50);
    text("¡Bienvenido!", width/2, 100);
    text("Ilusión Óptica", width/2, 150);
    image(beginning, width/2, 200, 50, 50);
    textSize(15);
    text("Mueva el mousse para mover el patrón", width/2, 260);
    text("Presione R,G o B para cambiar el color de la ilusión", width/2, 280);
    text("Presione S para romper la ilusión", width/2, 300);
    text("Presione la barra espaciadora para reiniciar", width/2, 320);
    if(mouseX>160 && mouseX<360 && mouseY>375 && mouseY<425){
    fill(40);
    rect(160,375,200,50);
    fill(230);
    text("Comenzar",width/2, 405);
    }else{
    fill(0);
    rect(160,375,200,50);
    fill(255);
    text("Comenzar", width/2, 405);
    }
  } else {
    cdist=dist(width/2, height/2, mouseX, mouseY);
    if (cdist >60 && cdist<100||cdist >140 && cdist<180||cdist >220 && cdist<260||cdist >340 && cdist<380||cdist >420 && cdist<460||cdist >500 && cdist<540) {
      if (blackish ==true) {
        firstC=white;
        secondC=black;
      } else if (redish ==true) {
        firstC = lerpColor(white, red, 0.3);
        secondC = lerpColor(black, red, 0.3);
      } else if (blueish ==true) {
        firstC = lerpColor(white, blue, 0.3);
        secondC = lerpColor(black, blue, 0.3);
      } else if (greenish ==true) {
        firstC = lerpColor(white, green, 0.3);
        secondC = lerpColor(black, green, 0.3);
      }
    } else {
      if (blackish ==true) {
        firstC=black;
        secondC=white;
      } else if (redish ==true) {
        firstC = lerpColor(black, red, 0.3);
        secondC = lerpColor(white, red, 0.3);
      } else if (blueish ==true) {
        firstC = lerpColor(black, blue, 0.3);
        secondC = lerpColor(white, blue, 0.3);
      } else if (greenish ==true) {
        firstC = lerpColor(black, green, 0.3);
        secondC = lerpColor(white, green, 0.3);
      }
    }
    for (int x = 0; x<=12; x++) {
      for (int y = 0; y<=12; y++) {
        if (y==1 && x>(4+s) && x<(8+s) ||x==1 && y>(4-s) && y<(8-s)||x==11 && y>(4+s) && y<(8+s)||y==11 && x>(4-s) && x<(8-s)) {
          fill(firstC);
        } else if (y==3 && x>(4+s) && x<(8+s)||x==3 && y>(4-s) && y<(8-s)||x==9 && y>(4+s) && y<(8+s)||y==9 && x>(4-s) && x<(8-s)) {
          fill(firstC);
        } else if (y==5 && x>=(5+s) && x<=(7+s)||x==5 && y>=(5-s) && y<=(7-s)||y==7 && x>=(5-s) && x<=(7-s)||x==7 && y>=(5+s) && y<=(7+s)) {
          fill(firstC);
        } else if (x<=(4+s) && x>=(0+s) && y==0 || x>=(8+s) && x<=(12+s) && y==0 ||  x>=(8-s) && x<=(12-s) && y==12 || x<=(4-s) &&  x>=(0-s) && y==12) {
          fill(firstC);
        } else if (y<=(4-s) && y>=(0-s) && x==0 || y>=(8-s) && y<=(12-s) && x==0 || y>=(8+s) && y<=(12+s) && x==12 || y<=(4+s) && y>=(0+s) && x==12) {
          fill(firstC);
        } else if (y==2 && x>(1+s) && x<(5+s) ||y==2 && x>(7+s) && x<(11+s)||y==10 && x>(1-s) && x<(5-s) ||y==10 && x>(7-s) && x<(11-s)) {
          fill(firstC);
        } else if (x==2 && y>(1-s) && y<(5-s) ||x==2 && y>(7-s) && y<(11-s)||x==10 && y>(1+s) && y<(5+s) ||x==10 && y>(7+s) && y<(11+s)) {
          fill(firstC);
        } else if (x==(4+s) && y==4 || x==4 && y==(8+s) || x==8 && y==(4-s) || x==(8-s) && y==8) {
          fill(firstC);
        } else {
          fill(secondC);
        }
        rect(x*40, y*40, 40, 40);
      }
    }
  }
}
void keyPressed() {
  if (key =='r'&& pantalla==1||key=='R'&& pantalla==1) {
    firstC = lerpColor(black, red, 0.3);
    secondC = lerpColor(white, red, 0.3);
    blackish=false;
    redish=true;
    blueish=false;
    greenish=false;
  } else if (key =='g' && pantalla==1||key =='G'&& pantalla==1) {
    firstC = lerpColor(black, green, 0.3);
    secondC = lerpColor(white, green, 0.3);
    blackish=false;
    redish=false;
    blueish=false;
    greenish=true;
  } else if (key =='b'&& pantalla==1||key =='B'&& pantalla==1) {
    firstC = lerpColor(black, blue, 0.3);
    secondC = lerpColor(white, blue, 0.3);
    blackish=false;
    redish=false;
    blueish=true;
    greenish=false;
  } else if (key =='s' && pantalla==1 || key =='S' && pantalla==1) {
    s=s+1;
  } else if (key ==' ') {
    firstC = black;
    secondC = white;
    blackish=true;
    redish=false;
    blueish=false;
    greenish=false;
    s=0;
    pantalla=0;
  }
}
void mousePressed(){
if(mouseX>160 && mouseX<360 && mouseY>375 && mouseY<425 && pantalla ==0){
    pantalla = 1;
    }
}
