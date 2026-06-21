// https://youtu.be/tEC7ycakyUI

PImage i31;
int tam_cuadros = 28;
color fondo;
int R = 96;
int G = 148;
int B = 144;
float angulo1 = PI/4;
float angulo2 = PI*7/4;

void setup(){
size(800,400);
i31 = loadImage("31.jpg");
}

//Cambiar color fondo random
void mouseWheel(){
R = (int(random(0,255)));
G = (int(random(0,255)));
B = (int(random(0,255)));
}

void draw(){
  
  if (keyPressed && key == 'r'){
  restart();
  }
  
fondo = color(R, G, B);

for(int y=0; y<15; y++){
  for(int x=0; x<15; x++){
     stroke(modo(R,G,B));
  strokeWeight(2);
  rectMode(CORNER);
  //Asignar color del centro / Color del fondo
  if((x >= 5 && x <= 9) && (y >= 5 && y <= 9)){
    fill(199, 56, 26);
   }else{
  fill(fondo);
  }
 
 
rect(391+(tam_cuadros*x), -9+(tam_cuadros*y), tam_cuadros, tam_cuadros);

}
}

for(int y=0; y<15; y++){
  for(int x=0; x<15; x++){
noStroke();
fill(modo(R,G,B));
pushMatrix();
translate(419+(tam_cuadros*x),19+(tam_cuadros*y));
rotate(PI/4);
rectMode(CENTER);
rect(0,0, 13, 13);
popMatrix();

pushMatrix();
  translate(419+(tam_cuadros*x),19+(tam_cuadros*y));
rectMode(CENTER);

fill(modoI(R,G,B));
if (mousePressed){
rotarLineas(x, y);
}

if((x >= 4 && x <= 9) && (y >= 4 && y <= 9)){
rotate(angulo1);
}else{
rotate(angulo2);
}

rect(0,0, 13, 4);

popMatrix();

    
  }
}

  image(i31,0,0);

}
