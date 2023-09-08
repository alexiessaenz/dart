class Tienda {
    String nombre;
    String direccion;
    List<Departamento> departamentos;
    Tienda(this.nombre, this.direccion, this.departamentos);
}

class Departamento {
    String nombre;
    List<Categoria> categorias;
    Departamento(this.nombre, this.categorias);
}

class Categoria {
  String nombre;
  List<Articulo> articulos;
  Categoria(this.nombre, this.articulos);
}

class Articulo {
    String nombre;
    int disponible;
    Articulo(this.nombre,this.disponible);
}

void main(List<String> args) {
  List<Articulo> articulos = [];

  final articulo1 = Articulo('Computadora', 12);
  final articulo2 = Articulo('Mouse', 20);

  articulos.add(articulo1);
  articulos.add(articulo2);

  final categoria1 = Categoria('Computacion', articulos);
  List<Categoria> categorias = [];
  categorias.add(categoria1);

  final departamento1 = Departamento('Departamento de informatica', categorias);
  List<Departamento> departamentos = [];
  departamentos.add(departamento1);

  final tienda1 = Tienda('Tienda de computadoras', 'Av. 1', departamentos);
  print(tienda1.nombre);
  print(tienda1.direccion);
  for (Departamento departamento in tienda1.departamentos) {
    print(departamento.nombre);
    for (Categoria categoria in departamento.categorias) {
      print(categoria.nombre);
      for (Articulo articulo in categoria.articulos) {
        print(articulo.nombre);
        print(articulo.disponible);
      }
    }
  }
}