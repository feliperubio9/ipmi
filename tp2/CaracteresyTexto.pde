int caracteres  = 0;
boolean textofin = false;
int expansion = 0;


void funcionTexto(int texsize, int cordx1, int cordy1, int cordx2, int cordy2, String textoINFO, int largo){
fill(136, 152, 146, fadeG/1.1);
rectMode(CORNERS);
expansion = expansion + 10;
expansion = limitar(expansion, cordx1, cordx2);
rect(cordx1,cordy1, expansion, cordy2, 10);
fill(0, fadeG);
textFont(fuente2, texsize);
textAlign(LEFT, BASELINE);
text(textoINFO, cordx1 + 12, cordy1 + 10, expansion, cordy2);
if(caracteres < largo){
caracteres = caracteres + 1;
  if (expansion < cordx2) {
  textofin = false;  
  }else {
      textofin = true;
    }
  } 
}
  
