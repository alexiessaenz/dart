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

abstract class Empleado extends Persona{
    Rol rol;
    Empleado({required String name, required this.rol}):
    super(nombre: name);
    void calcularSalario();
}

class Director extends Persona{
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
}



