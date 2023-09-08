void main(List<String> args){
    print('Inicio del programa');

    httpGet('https://api.nasa.com/aliens').then(
        (value){
          print(value);
        }).catchError((error){
          print('Error: $error');
        }).whenComplete(() => print('Fin del programa')
    );

}

Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4), (){
    throw 'Error en la petición';
    return 'Hola Mundo';
  });
}