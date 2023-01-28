
void main(List<String> arguments) {
  final unCuadrado = Cuadrado();
  print('El area de unCuadrado es: ${unCuadrado.area}');





}

abstract class FiguraGeometrica {
    //Establecer lo que debe contener una figura geometrica
  double? area;

  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  //Cuadrado hereda de FiguraGeometrica
  //y debe implemetartodo lo definido en la clase abstracta

  @override
  double? area;

  @override
  double calcularArea(){
    double lado = 12.5;
    return lado * lado;
  }
}
