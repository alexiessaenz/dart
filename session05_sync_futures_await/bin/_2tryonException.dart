void main(List<String> arguments) async {
  print('Inicio del programa!');
  try{
    final value  = await httpGet('https://api.nasa.com/aliens');
    print('Exito: $value');
  } on Exception catch(e){
    print('Tenemos una exception: $e');
  } catch(e){
    throw new Exception('Error: $e');
  } finally{
    print('Fin del programa!');
  }
}
Future<String> httpGet(String url) async {
  await Future.delayed(new Duration(seconds: 4));
  throw Exception('No hay parametros en la url');
}
