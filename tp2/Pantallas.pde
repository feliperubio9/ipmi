  String introString = "";
PImage Continuar;
PImage Continuar2;
PImage front2;
PImage oceania2;
PImage asor2;
PImage eurasia2;
PImage oceania;
PImage oceaniaciv;
PImage bigbrother;
PImage winston1;
PImage winston2;
PImage winston2fondo;
PImage winstonjulia;
PImage winstonjulia2;
PImage botonreset1;
PImage botonreset2;
PImage ministerios;
  boolean iniciar = false;
  int desplazamiento = 0;
  

void Intro(){

    fill(150, 0, 0);
  textFont(impact, 270);
   textAlign(LEFT, BASELINE);
  text(introString, 57, 351 - desplazamiento);


  if (frameCount > 80){
introString = "1";
  }
    if (frameCount > 153){
introString = "19";
  }
     if (frameCount > 220){
introString = "198";
  }
      if (frameCount > 294){
introString = "1984";
  }
        if (frameCount > 364){
          if ((mouseX > 181 && mouseX < 458 ) && (mouseY > 386 + desplazamiento && mouseY < 450 + desplazamiento)){
          image(Continuar2, 0, 0 + desplazamiento);
          if (mousePressed){
            iniciar = true;
          }
        }else{
            tint(255, 255);
          image(Continuar, 0, 0 + desplazamiento);
        }
        if (iniciar == true){
        desplazamiento = desplazamiento + 10;
        }
        if (desplazamiento > 400){
                  pausa = false;
        desplazamiento = -450;
        fadeG = 0;
        pantalla = 2;

        }
      }
}

void Pantalla2(int tiempo){
if(timer < 710){
  fadeG = fadeG + 5;
}else{
  habilitarbotonpausa = false;
fadeG = fadeG - 5;  
}

  fill(#32413c, fadeG);
  noStroke();
rect(0,0,640,480);

  //Seleccion de Naciones
//oceania
if (fadeG >= 255){
  if (((mouseX >= 32 && mouseX <= 208) && (mouseY >= 37 && mouseY <= 179)) || ((mouseX >= 124 && mouseX <= 227) && (mouseY >= 168 && mouseY <= 330))  || ((mouseX >= 306 && mouseX <= 631) && (mouseY >= 216 && mouseY <= 323)) || ((mouseX >= 262 && mouseX <= 300) && (mouseY >= 50 && mouseY <= 84)) ){
  tint(255, sel1);
  image(oceania2, 0, 0);
    sel1 = sel1 + 30;
  if(sel1 >= 255){
  sel1 = 255;
  }
  } else{
      sel1 = sel1 - 30;
  if (sel1 <= 0){
  sel1 = 0;
  }
 
}
//eurasia
if((mouseX >= 272 && mouseX <= 435) && (mouseY >= 86 && mouseY <= 141)||(mouseX >= 301 && mouseX <= 583) && (mouseY >= 24 && mouseY <= 86)){
 tint(255, sel2);
  image(eurasia2, 0, 0);
  sel2 = sel2 + 30;
  if(sel2 >= 255){
  sel2 = 255;
  }
  } else{
      sel2 = sel2 - 30;
  if (sel2 <= 0){
  sel2 = 0;
  }
 }
 
 //asia oriental
 if((mouseX >= 436 && mouseX <= 562) && (mouseY >= 99 && mouseY <= 196)){
 tint(255, sel3);
  image(asor2,0,0);
   sel3 = sel3 + 30;
  if(sel3 >= 255){
  sel3 = 255;
  }
  } else{
      sel3 = sel3 - 30;
  if (sel3 <= 0){
  sel3 = 0;
  }
 }


}

tint(255, fadeG);
  image(front2, 0, 0);
noTint();

  if (fadeG >= 255){
funcionTexto(20, 13,336, 627, 460, "En 1984, tras una serie de conflictos globales a principios del siglo XX, el mundo está dividido en tres superpotencias: Oceanía, Eurasia y Asia Oriental, quienes se encuentran en un estado de guerra permanente.", 211);
if(textofin == true){
habilitarbotonpausa = true;
  }
}

if (timer >= tiempo){
  expansion = 0;
  caracteres  = 0;
pantalla = 3;
}
}

 



void Pantalla3(int tiempo){
 if (desplazamiento >= 0){
 desplazamiento = 0;
 }
  
  tint(255, fadeG);
 image(oceania, 0 + desplazamiento, 0);
  noTint();


      funcionTexto(18, 438 - desplazamiento/2,72,610 - desplazamiento/2,458, "Esta novela nos sitúa en Oceanía, caracterizada por un sistema político totalitario conocido como Ingsoc, un sistema en el que el poder se ejerce no solo a través de la fuerza sino también mediante el control de la información, lenguaje y pensamiento.", 251);
if(textofin == true){
habilitarbotonpausa = true;
  }    

   if (timer >= 1470){
    habilitarbotonpausa = false;
    desplazamiento = desplazamiento - 5;
    fadeG = fadeG - 5;
}else{
    fadeG = fadeG + 5;
 desplazamiento = desplazamiento + 5;
}
if (timer >= tiempo){
fadeG = 0;
desplazamiento = -400;
expansion = 0;
caracteres = 0;
pantalla = 4;
}
}

void Pantalla4(int tiempo){
 if (desplazamiento >= 0){
 desplazamiento = 0;
 }
   tint(255, fadeG);
 image(oceaniaciv, 0 - desplazamiento, 0);
  noTint();
  
        funcionTexto(18, 14 + desplazamiento/2,60,316 + desplazamiento/2,467,
        "La sociedad de Oceanía está fuertemente jerarquizada. En la cima se encuentra una élite reducida que concentra el poder (Partido Interior), seguida por un grupo intermedio encargado de ejecutar las órdenes y mantener el funcionamiento del sistema (Partido Exterior), y finalmente una gran masa de población que vive en condiciones más precarias y con escasa participación real en la vida política (Proles). Esta estructura no busca la movilidad social, sino su perpetuación en el tiempo.", 487);
if(textofin == true){
habilitarbotonpausa = true;
  }
  if (timer >= 2791){
    fadeG = fadeG - 5;
   habilitarbotonpausa = false;
  }else{
      fadeG = fadeG + 5;
 desplazamiento = desplazamiento + 5;
}
if (timer >= tiempo){
  expansion = 0;
  caracteres = 0;
pantalla = 5;
}
}

void Pantalla5(int tiempo){
  tint(255, fadeG);
image(bigbrother,0,0);
noTint();

funcionTexto(18, 14,308,626,468, "Por encima de todo se encuentra la figura del Gran Hermano, presentado como el líder absoluto y símbolo del Partido. Su imagen aparece constantemente en la vida cotidiana y funciona como una presencia permanente que observa, guía y exige lealtad total. Más que un simple dirigente político, representa la autoridad omnipresente del sistema y el control absoluto que este busca ejercer sobre los individuos.", 406);
if(textofin == true){
habilitarbotonpausa = true;
  }
if(timer >= 3956){
fadeG = fadeG - 5;
habilitarbotonpausa = false;
}else{
  fadeG = fadeG + 5;
}
if (timer >= tiempo){
  desplazamiento = -430;
pantalla = 6;
expansion = 0;
caracteres = 0;
}
}

void Pantalla6(int tiempo){
   if (desplazamiento >= 0){
 desplazamiento = 0;
 }
funcionTexto(18, 326 - desplazamiento,133,626 - desplazamiento,462,"En este contexto conocemos a Winston Smith, un hombre de 39 años y miembro del Partido Exterior que trabaja en el Ministerio de la Verdad. Su tarea consiste en modificar registros y documentos del pasado para adaptarlos a la versión oficial del Partido. Sin embargo, detrás de su aparente obediencia, Winston comienza a desarrollar dudas y un creciente rechazo hacia el sistema que lo rodea.", 391);
  if(textofin == true){
habilitarbotonpausa = true;
  }
  tint(255, fadeG);
image(winston1,0 + desplazamiento,0);
noTint();
if (timer >= 5146){
  fadeG = fadeG - 5;
  desplazamiento = desplazamiento - 5;
  habilitarbotonpausa = false;
}else{
      fadeG = fadeG + 5;
 desplazamiento = desplazamiento + 5;
}
if (timer >= tiempo){
  expansion = 0;
  caracteres = 0;
  desplazamiento = -380;
pantalla = 7;
}
}

void Pantalla7(int tiempo){
     if (desplazamiento >= 0){
 desplazamiento = 0;
 }
  tint(255, fadeG);
image(winston2fondo,0,0);
image(winston2,0 + desplazamiento,0);
noTint();
funcionTexto(20, 13,302, 627, 460, "A medida que sus pensamientos críticos aumentan, Winston comienza a realizar pequeños actos de rebeldía que representan un grave delito en Oceanía. En una sociedad donde incluso las ideas son vigiladas, cuestionar al Partido o conservar una opinión propia puede considerarse una amenaza para el sistema.", 303);
  if(textofin == true){
habilitarbotonpausa = true;
  }
if(timer >= 6010){
fadeG = fadeG - 5;
habilitarbotonpausa = false;
}else{
desplazamiento = desplazamiento + 5;
      fadeG = fadeG + 5;
}
if (timer >= tiempo){
  expansion = 0;
  caracteres = 0;
  pantalla = 8;
}
}

void Pantalla8(int tiempo){
    tint(255, fadeG);
image(winstonjulia,0,0);
noTint();

funcionTexto(20, 13,285, 627, 460, "En su búsqueda por comprender la verdad y recuperar cierta libertad individual, Winston conoce a Julia, una joven miembro del Partido con quien inicia una relación secreta. Juntos comparten un profundo rechazo hacia el control impuesto por el sistema y encuentran en su vínculo una forma de resistencia frente a la opresión de Oceanía.",335);
  if(textofin == true){
habilitarbotonpausa = true;
  }
  if (timer >= 7100){
    habilitarbotonpausa = false;
       fadeG = fadeG - 5;
  }else{
   fadeG = fadeG + 5;
 }
 if (timer >= tiempo){
   expansion = 0;
   caracteres = 0;
   pantalla = 9;
 }
}

void Pantalla9(int tiempo){
    tint(255, fadeG);
image(winstonjulia2,0,0);
noTint();
funcionTexto(20, 13,325, 627, 460, "Sin embargo, en Oceanía nada escapa al control del Partido. Lo que Winston y Julia creen ser un espacio seguro termina convirtiéndose en una trampa, demostrando que el sistema de vigilancia y manipulación es mucho más amplio y poderoso de lo que imaginaban.", 257);
if(textofin == true){
habilitarbotonpausa = true;
  }
  if (timer >= 7850){
    habilitarbotonpausa = false;
       fadeG = fadeG - 5;
  }else{
   fadeG = fadeG + 5;
 }
  if (timer >= tiempo){
    expansion = 0;
    caracteres = 0;
   pantalla = 10;
  }
}

void Pantalla10(int tiempo){
      tint(255, fadeG);
image(ministerios,0,0);
noTint();
funcionTexto(20, 13,279, 627, 460, "Tras ser descubiertos, Winston y Julia son arrestados y llevados al Ministerio del Amor, donde Winston es sometido a intensos procesos de interrogatorio, tortura y reeducación. Allí enfrenta sus mayores miedos y es obligado a cuestionar no solo sus acciones, sino también sus pensamientos y su propia percepción de la realidad.", 327);
if(textofin == true){
habilitarbotonpausa = true;
  }
    if (timer >= 8720){
    habilitarbotonpausa = false;
       fadeG = fadeG - 5;
  }else{
   fadeG = fadeG + 5;
 }
  if (timer >= tiempo){
    expansion = 0;
    caracteres = 0;
    iniciar = false;
   pantalla = 11;
  }
}

void Pantallareset(){
     fadeG = fadeG + 5;
      fill(150, 0, 0, fadeG);
  textFont(impact, 270);
   textAlign(LEFT, BASELINE);
  text(1984, 57, 351 - desplazamiento);
        if ((mouseX > 181 && mouseX < 458 ) && (mouseY > 386 + desplazamiento && mouseY < 450 + desplazamiento)){
          image(botonreset2, 0, 0 + desplazamiento);
          if (mousePressed){
            iniciar = true;
          }
        }else{
            tint(255, fadeG);
          image(botonreset1, 0, 0 + desplazamiento);
        }
        if (iniciar == true){
        desplazamiento = desplazamiento + 10;
        }
        if (desplazamiento > 400){
                  pausa = false;
        desplazamiento = -450;
        fadeG = 0;
        timer = 0;
        pantalla = 2;

        }
  
}
