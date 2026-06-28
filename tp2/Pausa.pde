PImage bpausa;
PImage bpausa2;
PImage bpausa3;
boolean pausa = true;
boolean clickbloq = false;
boolean habilitarbotonpausa = false;

void botonpausa(){
if (habilitarbotonpausa == true){
  if (dist(611, 28, mouseX, mouseY) >= 21){
  tint(255, 150);
}else{
  tint(255, 255);
    if(mousePressed && !clickbloq){
  pausa = !pausa;
  clickbloq = true;
  }
  if(!mousePressed){
  clickbloq = false;
  }
}
if (pausa == false){
image(bpausa, 590, 7);
}else{
image(bpausa2, 590, 7);
}
}else{
  tint(255, 180);
  image(bpausa3, 590, 7);
}
}
