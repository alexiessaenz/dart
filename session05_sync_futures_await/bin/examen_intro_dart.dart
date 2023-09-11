mixin Disponible {
  int disponible= 0;
}
mixin Informacion {
  String nombre= '';
  String direccion= '';
}
enum CategoriaProducto{
  Lacteos,
  Carnes,
  Frutas,
  Verduras,
  Panaderia,
  Abarrotes,
  Bebidas,
  Limpieza,
  Farmacia,
  Mascotas,
  Ropa,
  Juguetes,
  Ferreteria,
  Tecnologia,
  Electrodomesticos,
  Hogar,
  Papeleria,
  Oficina,
  Libros,
  Entretenimiento,
  Otros
}
enum DepartamentoProducto{
  Alimentos,
  Hogar,
  Tecnologia,
  Entretenimiento,
  Otros
}
enum Articulos{
  Teclado,
  Mouse,
  Monitor,
  CPU,
  Muebles,
  Sillon,
  Mesa,
  Silla,
  Cama,
  Colchon,
  Refrigerador,
  Lavadora,
  Licuadora,
  Plancha,
  Television,
  Radio,
  Celular,
  Laptop,
  Tablet,
}

class Tienda with Informacion {
    List<Departamento> departamentos;
    Tienda( this.departamentos);
}

class Departamento  {
    DepartamentoProducto nombre;
    List<Categoria> categorias = [];
    Departamento({required this.nombre, this.categorias = const []});

    //agregar categoria nueva
    void crearCategoria(Categoria categoria){
      categorias.add(categoria);
    }

    //cantidad de articulos en el departamento
    int cantidadArticulos(){
      int cantidad = 0;
      for (Categoria categoria in categorias) {
        cantidad += categoria.articulos.length;
      }
      return cantidad;
    }

    @override
  String toString() {
    return 'Departamento{\nnombre: $nombre, categorias: ${categorias.length}}';
  }
}

class Categoria{
CategoriaProducto nombre;
  List<Articulo> articulos= [];
  Categoria( {required this.nombre, this.articulos= const []});

  //crear articulo nuevo
  void crearArticulo(Articulo articulo){
    articulos.add(articulo);
  }
  //agregar articulo existente
  void agregarArticulo(Articulo articulo){
    articulos.add(articulo);
  }

@override
  String toString() {
    return 'Categoria{\nnombre: $nombre, \ncantidad de articulos: ${articulos.length}}';
  }
}

class Articulo with Disponible {
    Articulos nombre;
    Articulo({required this.nombre});
}

void main(List<String> args) {
  List<Articulo> articulos = [];
  List<Articulo> articulos2 = [];
  List<Categoria> categorias = [];
  List<Departamento> departamentos = [];

  final articulo1 = Articulo(nombre: Articulos.Teclado);
  articulo1.disponible = 10;
  final articulo2 = Articulo(nombre: Articulos.Mouse);
  articulo2.disponible = 20;

  articulos.add(articulo1);
  articulos.add(articulo2);

  final articulo3 = Articulo(nombre: Articulos.Muebles);
  articulos2.add(articulo3);
  final categoria1 = Categoria(nombre: CategoriaProducto.Tecnologia, articulos: articulos);
  categorias.add(categoria1);

  final categoria2 = Categoria(nombre: CategoriaProducto.Hogar, articulos: articulos2);
  categorias.add(categoria2);


  final departamento1 = Departamento(nombre: DepartamentoProducto.Tecnologia,  categorias: categorias);
  departamentos.add(departamento1);

  final departamento2 = Departamento(nombre: DepartamentoProducto.Hogar,  categorias: categorias);
  departamentos.add(departamento2);

  final tienda1 = Tienda( departamentos);
  tienda1.nombre = 'Tienda de la esquina';
  tienda1.direccion = 'Calle 1 # 2-3';


  //---------- Imprimir datos de la tienda -----------
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

  print('------- prueba --------');
  print(categoria1);
  print(categoria2);
  print(departamento1);
  print(departamento2);
  print('------- prueba --------');
}