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

class Director extends Persona{
  double salario;
    Director({required String name})
    : this.salario = 1300, super(nombre: name);

    @override
  String toString() {
    return 'Director{'
        'nombre: $nombre, '
        'salario: $salario'
        '}';
  }
}



