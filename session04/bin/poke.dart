import 'package:http/http.dart' as http;
import 'dart:convert';


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
  var request = http.Request('GET', Uri.parse('https://pokeapi.co/api/v2/pokemon/1'));


  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await (response)=>{
      var json = response;
        var scores = jsonDecode(response.stream.bytesToString()));
    });
  }
  else {
    print(response.reasonPhrase);
  }
    await Future.delayed(new Duration(seconds: 3));
    throw Exception('Error en la petición');
}
