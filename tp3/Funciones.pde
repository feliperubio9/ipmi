int modo(int R, int G, int B){
if ((R+ G + B)/3 > 127){
  return 0;
}else{
return 255;
}
}

int modoI(int R, int G, int B){
if ((R+ G + B)/3 < 127){
  return 0;
}else{
return 255;
}
}

void rotarLineas(int x, int y){
if((x >= 4 && x <= 9) && (y >= 4 && y <= 9)){
angulo1 = map(mouseY,0,400,0,PI*2);
}else{
angulo2 = map(mouseX,0,800,0,PI*2);
}
}

void restart(){
R = 96;
G = 148;
B = 144;
angulo1 = PI/4;
angulo2 = PI*7/4;
}
