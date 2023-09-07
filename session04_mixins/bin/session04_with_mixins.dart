// import 'package:session04_mixins/session04_mixins.dart' as session04_mixins;

abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  String fly = ' papu!';
  void volar() => print('Estoy volando!' + fly);
}

mixin Caminante{
  void caminar() => print('Estoy caminando!');
}

mixin Nadador{
  void nadar() => print('Estoy nadando!');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador,Caminante{}
class Gato extends Mamifero with Caminante{}
class Paloma extends Ave with Volador,Caminante{}
class Pato extends Ave with Volador,Caminante,Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador,Volador{}

mixin DelfinMixin on Delfin{}

void main(List<String> arguments) {

  // print('Hello world: ${session04_mixins.calculate()}!');
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.volar();
  batman.caminar();

  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
}
