

import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop = Computadora('Dell', 'Intel core i 9', 32);
  print('Informacion de la laptop que te venden en internet: $unaLaptop');
  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Informacion de la laptop que te llego a cada: $unaLaptop');

  stdout.write('Esta computadora es adecuada para la materia dmm');
  String? respuesta = stdin.readLineSync();
  if(respuesta!= null){
    if(respuesta.contains('si')){
      unaLaptop.confirugarAdecuada = true;
  }else{
    unaLaptop.confirugarAdecuada = false;
  }
    } else {
      print('Nose puede saber si la PC es adecuada porque se recibio null');
    }
    print('Laptop 1 es adecuada para tu mteria: ${unaLaptop.esAdecuada}');



}


class Computadora {
  //Campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;

  //Constructor
 /* Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/
 //Forma corta de escribir el constructor
 Computadora(this.marca,this.cpu, this.ram);





  @override 
  String toString() {
    
    return 'Marca: ${this.marca}, CPU: ${this.cpu}, Ram: ${this.ram}';
  }
  //getter de la variable adecuada
  bool get esAdecuada {
    return adecuada;
  }

  //setter de la variable adecuada
  set confirugarAdecuada(bool valor){
    adecuada = valor;
  }

}