void main(List<String> args){
    final director = Director(  name: 'Francisco');
    print('Director: ${ callPerson( director)}');
}

String callPerson( Persona director){
    return director.toString();
}

abstract class Persona{
    String nombre;
    Persona({required this.nombre});
}

enum Rol { director, maestro, empleado }

<<<<<<< HEAD
class Empleado extends Persona implements Isalario{
    Rol rol;
    Empleado({required String name, required this.rol}):
    super(nombre: name);

}

class Isalario{
  double salario = 0;
  Isalario({ this.salario = 0})
  : assert(salario >= 0, 'salario must be >= 0');
  void calcularSalario(Rol r){
    switch(r){
      case Rol.director:
        this.salario = 1000;
        break;
      case Rol.maestro:
        this.salario = 500;
        break;
      case Rol.empleado:
        this.salario = 300;
        break;
    }
  }
}
class Director extends Persona implements Isalario{
=======
abstract class Empleado extends Persona{
    Rol rol;
    Empleado({required String name, required this.rol}):
    super(nombre: name);
    void calcularSalario();
}

class Director extends Persona{
>>>>>>> ee35171aeec979ab91edb4af590cc5e199dce3c4
  double salario;
    Director({required String name})
    : this.salario = 1300, super(nombre: name);

    @override
  String toString() {
    return class.name+'{'
        'nombre: $nombre, '
        'salario: $salario'
        '}';
  }

  @override
  void calcularSalario(Rol r ) {
    // TODO: implement calcularSalario
  }


}



