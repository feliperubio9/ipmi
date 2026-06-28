// En la primera entrega el uso de constrain generó dudas a la hora de la corrección, así que esta vez lo aplico con condicionales.


int limitar(int dato, int minimo, int maximo){
 if (dato >= maximo){
  dato = maximo;
  }else {if (dato <= minimo){
  dato = minimo;
  }
  }
  return dato;
}
