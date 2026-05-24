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

import processing.sound.*;
SoundFile musica;

void setup() {
  size(640, 480);
  musica = new SoundFile(this, "PP.wav");
  tecla = new SoundFile(this, "TW.wav");
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
  println("d888888b d8888b. .d888b.      d88888b d88888b db      d888888b d8888b. d88888b      d8888b. db    db d8888b. d888888b  .d88b.  \n`~~88~~' 88  `8D VP  `8D      88'     88'     88        `88'   88  `8D 88'          88  `8D 88    88 88  `8D   `88'   .8P  Y8. \n   88    88oodD'    odD'      88ooo   88ooooo 88         88    88oodD' 88ooooo      88oobY' 88    88 88oooY'    88    88    88 \n   88    88~~~    .88'        88~~~   88~~~~~ 88         88    88~~~   88~~~~~      88`8b   88    88 88~~~b.    88    88    88 \n   88    88      j88.         88      88.     88booo.   .88.   88      88.          88 `88. 88b  d88 88   8D   .88.   `8b  d8' \n   YP    88      888888D      YP      Y88888P Y88888P Y888888P 88      Y88888P      88   YD ~Y8888P' Y8888P' Y888888P  `Y88P' \n\n");
  println("  1111111     999999999          888888888            444444444  \n 1::::::1   99:::::::::99      88:::::::::88         4::::::::4  \n1:::::::1 99:::::::::::::99  88:::::::::::::88      4:::::::::4  \n111:::::19::::::99999::::::98::::::88888::::::8    4::::44::::4  \n   1::::19:::::9     9:::::98:::::8     8:::::8   4::::4 4::::4  \n   1::::19:::::9     9:::::98:::::8     8:::::8  4::::4  4::::4  \n   1::::1 9:::::99999::::::9 8:::::88888:::::8  4::::4   4::::4  \n   1::::l  99::::::::::::::9  8:::::::::::::8  4::::444444::::444\n   1::::l    99999::::::::9  8:::::88888:::::8 4::::::::::::::::4\n   1::::l         9::::::9  8:::::8     8:::::84444444444:::::444\n   1::::l        9::::::9   8:::::8     8:::::8          4::::4  \n   1::::l       9::::::9    8:::::8     8:::::8          4::::4  \n111::::::111   9::::::9     8::::::88888::::::8          4::::4  \n1::::::::::1  9::::::9       88:::::::::::::88         44::::::44\n1::::::::::1 9::::::9          88:::::::::88           4::::::::4\n11111111111199999999             888888888             4444444444");

}

  // marcar coords, ELIMINAR
  void mousePressed() {
  println(mouseX + ", " + mouseY);
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
fadeG = constrain(fadeG, 0, 255);
if (frameCount == 70){
musica.loop();
}




if (pausa == false){
  timer = timer+1;
}
println(timer);

  // ojo
  int ojoX = mouseX-47;
  ojoX = constrain(ojoX, 277-47, 363-47);
  int ojoY = mouseY-47;
  ojoY = constrain(ojoY, 46-47, 76-47);
  image(ojo, ojoX, ojoY);
  image(fondoSup, 0, 0);


if (pantalla == 1){
Intro();
}  

if (pantalla == 2){
 Pantalla2();
}

if (pantalla == 3) {
Pantalla3();
}

if (pantalla == 4) {
Pantalla4();
}

if (pantalla == 5) {
Pantalla5();
}

if (pantalla == 6) {
Pantalla6();
}

if (pantalla == 7) {
Pantalla7();
}

if (pantalla == 8) {
Pantalla8();
}

if (pantalla == 9) {
Pantalla9();
}

if (pantalla == 10) {
Pantalla10();
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
