int caracteres  = 0;
boolean teclaplay = false; 
boolean textofin = false;
 
import processing.sound.*;
SoundFile tecla;



void funcionTexto(int texsize, int cordx1, int cordy1, int cordx2, int cordy2, String textoINFO){
fill(136, 152, 146, fadeG/1.1);
rectMode(CORNERS);
rect(cordx1,cordy1, cordx2, cordy2, 10);
fill(0, fadeG);
textFont(fuente2, texsize);
textAlign(LEFT, BASELINE);
text(textoINFO.substring(0, caracteres), cordx1 + 12, cordy1 + 10, cordx2, cordy2);
if(caracteres < textoINFO.length()){
caracteres = caracteres + 1;
  if (teclaplay == false) {
      tecla.play();
      teclaplay = true;
  textofin = false;  
  }
  } else {
      tecla.stop();
      teclaplay = false;
      textofin = true;
    }
}
  
