PFont InsideOut1, InsideOut2;
PImage one, two, three, four, five,credit;
String people1, people2, people3, headline;
float time = 0;
void setup(){
size (1000,600);
colorMode (HSB);
colorMode(HSB,360,100,100);
InsideOut1 = createFont("InsideOut1.ttf",150);
InsideOut2 = createFont("InsideOut2.ttf",60);
one = loadImage ("Credits1.jpg");
two = loadImage ("Credits2.jpg");
three = loadImage ("Credits3.jpg");
four = loadImage ("Credits4.jpg");
five = loadImage ("Credits5.jpg");
textAlign(CENTER,CENTER);
noStroke();
frameRate(40);
}
void draw(){
background (220,91,21);
textFont(InsideOut1);
fill(360,100-(frameCount/3));
text("Intensa",250+(time*2),200);
text("-",500,260);
text("mente",710-(time*2),310);
time = (time + 0.1)%30;
if(frameCount>300 && frameCount<600){
credit = one;
headline="Protagonistas";
people1 = "Amy Poehler";
people2 = "Phyllis Smith";
people3 = "Richard Kind";
fill(60,100,100,99);
circle (860,200,40);
fill(300,100,100,99);
circle(820-time,200,30);
fill(0,100,100,99);
circle(860,240+time,30);
}else if(frameCount>600 && frameCount<900){
credit = two;
headline="Música";
people1="Michael Giacchino";
people2="";
people3="";
fill(240,100,100,99);
circle (600,200,40);
fill(120,100,100,99);
circle(880-time,350,30);
fill(60,100,100,99);
circle(900,350-time,30);
}else if(frameCount>900 && frameCount<1200){
credit = three;
headline="Producción";
people1="Jonas Rivera";
people2="";
people3="";
fill(300,100,100,99);
circle (860+time,200+time,40-time);
fill(0,100,100,99);
circle (650-time,400-time,10+time);
}else if(frameCount>1200 && frameCount<1500){
credit = four;
headline="Guion";
people1="Pete Docter";
people2="Meg LeFauve";
people3="Josh Cooley";
fill(240,100,100,99);
circle (640+time,210,40);
fill(120,100,100,99);
circle (660-time,210,40);
}else if(frameCount>1500 && frameCount<1800){
credit = five;
headline="Dirección";
people1="Pete Docter";
people2="Ronnie del Carmen";
people3="";
fill(60,100,100,99);
circle (610+time,210,20);
fill(300,100,100,99);
circle (900-time,390,20);
}else if(frameCount>1801){
background(0);
}
if(frameCount>300 && frameCount<1800){
fill(360,50+(frameCount%300));
textFont(InsideOut2);
image(credit,100,150,400,300);
textSize(25);
textAlign(LEFT,CENTER);
text(headline,600,240);
textSize(40);
textAlign(CENTER,CENTER);
text(people1,750,290);
text(people2,750,330);
text(people3,750,370);
}
}
