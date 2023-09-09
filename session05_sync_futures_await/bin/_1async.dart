void main(List<String> arguments) async {
  print('Inicio del programa!');
  try{
      final value  = await httpGet('https://api.nasa.com/aliens');
      print(value);
  }catch(e){
      throw new Exception('Error: $e');
  } finally{
      print('Fin del programa!');
  }
}
Future<String> httpGet(String url) async {
    await Future.delayed(new Duration(seconds: 3));
    throw Exception('Error en la petición');
}
