PImage fondoInf;
PImage fondoSup;
PImage ojo;
PImage ojo2;
int fadeexit = 329;
int pantalla = 1;
PFont fuente2;
PFont impact;
 int fadeG = 0;
int sel1 = 0;
int sel2 = 0;
int sel3 = 0;
boolean siguiente = false;
int timer = 0;


void setup() {
  size(640, 480);
  fondoInf = loadImage("fondoinf2.png");
  fondoSup = loadImage("fondosup2.png");
  Continuar = loadImage("botoncomenzar1.png");
Continuar2 = loadImage("botoncomenzar2.png");
  ojo = loadImage("ojo22.png");
  ojo2 = loadImage("ojo222.png");
  front2 = loadImage("2front.png");
  oceania2 = loadImage("2oceania.png");
  asor2 = loadImage("2asor.png");
  eurasia2 = loadImage("2eurasia.png");
  oceania = loadImage("oceaniaimg.png");
    oceaniaciv = loadImage("oceaniaimg2.png");
  impact = loadFont("Impact-200.vlw");
  fuente2 = loadFont("fuente.vlw");
  bpausa = loadImage("bpause.png");
  bpausa2 = loadImage("bpause2.png");
  bpausa3 = loadImage("bpause3.png");
  bigbrother = loadImage("bigbrother.png");
  winston1 = loadImage("winston1.png");
  winston2 = loadImage("winston2.png");
  winston2fondo = loadImage("winston2fondo.png");
  winstonjulia = loadImage("winstonjulia.png");
    winstonjulia2 = loadImage("winstonjulia2.png");
    ministerios = loadImage("ministerios.png");
    botonreset1 = loadImage("botonrestart1.png");
    botonreset2 = loadImage("botonrestart2.png");

}





void keyPressed() {
  //desactivar exit
  if (key == ESC){
    key = 0;
  }

      }

void draw() {
  background(200);
  tint(255);
  image(fondoInf, 0, 0);
  
fadeG = limitar(fadeG, 0, 255);
  
 
if (pausa == false){
  timer = timer+1;
}

  // ojo
  int ojoX = mouseX-47;
  int ojoY = mouseY-47;
  ojoX = limitar(ojoX, 277-47, 363-47);
  ojoY = limitar(ojoY, 46-47, 76-47);
  image(ojo, ojoX, ojoY);
  image(fondoSup, 0, 0);


if (pantalla == 1){
Intro();
}  

if (pantalla == 2){
 Pantalla2(750);
}

if (pantalla == 3) {
Pantalla3(1540);
}

if (pantalla == 4) {
Pantalla4(2857);
}

if (pantalla == 5) {
Pantalla5(4030);
}

if (pantalla == 6) {
Pantalla6(5216);
}

if (pantalla == 7) {
Pantalla7(6080);
}

if (pantalla == 8) {
Pantalla8(7170);
}

if (pantalla == 9) {
Pantalla9(7920);
}

if (pantalla == 10) {
Pantalla10(8790);
}

if (pantalla == 11) {
Pantallareset();
}

botonpausa();
  //exit
  fill(0, fadeexit);
  rect(0, 0, 1920, 1080);

  if ((keyPressed == true) && (key == ESC)) {
    fadeexit = fadeexit+10;
    fill(255, fadeexit);
    textFont(impact, 35);
    textAlign(LEFT, BASELINE);
    text("CERRANDO...", 13, 42);
    tint(255, fadeexit);
    image(ojo2, 0, 0);
  } else {
    fadeexit = fadeexit-10;
  }
  if (fadeexit < 0) {
    fadeexit = 0;
  } else if (fadeexit > 330) {
    fadeexit = 330;
  }
  if (fadeexit == 330) {
    exit();
  }
  
}
