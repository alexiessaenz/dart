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
enum Articulosp{
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
    var departamentos= <Departamento>{};


    //agregar departamento nuevo
    void crearDepartamento(Departamento departamento){
      departamentos.add(departamento);
    }

    //cantidad de articulos en la tienda
    int cantidadArticulos(){
      int cantidad = 0;
      for (Departamento departamento in departamentos) {
        cantidad += departamento.cantidadArticulos();
      }
      return cantidad;
    }

    @override
  String toString() {
    return 'Tienda{\nnombre: $nombre, \ndireccion: $direccion, \ncantidad de departamentos: ${departamentos.length}, \ncantidad de articulos: ${cantidadArticulos()}\n}';
    }
}

class Departamento  {
    DepartamentoProducto nombre;
    var categorias = <Categoria>{};
    Departamento({required this.nombre});

    //agregar categoria nueva
    void crearCategoria(Categoria categoria){
      categorias.add(categoria);
    }

    //cantidad de articulos en el departamento
    int cantidadArticulos(){
      int cantidad = 0;
      for (Categoria categoria in categorias) {
        categoria.articulos.forEach((element) { cantidad= element.disponible;});
      }
      return cantidad;
    }

    @override
  String toString() {
    return 'Departamento{\nnombre: $nombre, \ncategorias: ${categorias.length}, \ncantidad de articulos: ${cantidadArticulos()}\n}';
  }
}

class Categoria{
CategoriaProducto nombre;
  var articulos= <Articulo>{};
  Categoria( {required this.nombre});

  //agregar articulo existente
  void agregarArticulo(Articulo articulo){
    articulos.add(articulo);
  }
  //cantidad de articulos en la categoria
  int cantidadArticulos(){
    int cantidad = 0;
    articulos.forEach((element) { cantidad= element.disponible;});
    return cantidad;
  }

@override
  String toString() {
    return 'Categoria{\nnombre: $nombre, \ncantidad de articulos: ${cantidadArticulos()}\n}';
  }
}

class Articulo with Disponible {
    Articulosp nombre;
    Articulo({required this.nombre});
}

void main(List<String> args) {



  final tienda1 = Tienda( );
  tienda1.nombre = 'Tienda de la esquina';
  tienda1.direccion = 'Calle 1 # 2-3';

  final departamento1 = Departamento(nombre: DepartamentoProducto.Tecnologia);
  final departamento2 = Departamento(nombre: DepartamentoProducto.Hogar);

  tienda1.crearDepartamento(departamento1);
  tienda1.crearDepartamento(departamento2);

  final categoria1 = Categoria(nombre: CategoriaProducto.Tecnologia);
  final categoria2 = Categoria(nombre: CategoriaProducto.Hogar);

  departamento1.crearCategoria(categoria1);
  departamento2.crearCategoria(categoria2);

  final articulo1 = Articulo(nombre: Articulosp.Teclado);
  articulo1.disponible = 10;
  final articulo2 = Articulo(nombre: Articulosp.Mouse);
  articulo2.disponible = 20;
  final articulo3 = Articulo(nombre: Articulosp.Muebles);
  articulo3.disponible = 30;

  categoria1.agregarArticulo(articulo1);
  categoria1.agregarArticulo(articulo2);
  categoria2.agregarArticulo(articulo3);

  //---------- Imprimir datos de la tienda -----------
  print(tienda1.nombre);
  print(tienda1.direccion);
  for (Departamento departamento in tienda1.departamentos) {
    print('\n\n${departamento.nombre}');
    for (Categoria categoria in departamento.categorias) {
      print('\n${categoria.nombre}');
      for (Articulo articulo in categoria.articulos) {
        print(articulo.nombre);
        print(articulo.disponible);
      }
    }
  }

  print('\n\n------- Cant de productos por niveles --------');
  print(categoria1);
  print(categoria2);
  print(departamento1);
  print(departamento2);
  print(tienda1);
  print('------- Cant de productos por niveles --------');
}