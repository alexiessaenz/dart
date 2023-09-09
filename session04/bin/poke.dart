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
  var request = http.Request('GET', Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu'));
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var str = await response.stream.bytesToString();
    final Map<String, dynamic> pokemonmap = json.decode(str);
    dynamic pokemon = json.decode(str);
    print(pokemon['name']);

    print('type(s): ');
    pokemon['types'].forEach((k) => print('\t\t' + k['type']['name']));

    print('abilities: ');
    pokemon['abilities'].forEach((k) => print('\t\t' + k['ability']['name']));

    print('moves: ');
    pokemon['moves'].forEach( (k) => print('\t\t'+k['move']['name']) );
    //  var typesj = json.encode(pokemon['types']);
    // final Map<String, dynamic> types = json.decode(typesj);
    // print(types);
    // types.forEach((k,v) => {
    //   print('----------- $k -----------'),
    //   print('$k: $v'),
    //   print('----------- $k -----------\n\n\n')
    // });
    // print(pokemon['abilities']);
    //  pokemon['abilities'].forEach((k,v) => {
    //   print('----------- $k -----------'),
    //    print('$k: $v'),
    //    // k.forEach((k,v) => {
    //    //   print('----------- $k -----------'),
    //    //   print('$k: '),
    //    //   print('----------- $k -----------\n\n\n')
    //    // }),
    //   print('-----------   -----------\n\n\n')} );
    // print(pokemon['name']);
    // pokemon['species'].forEach((k,v) => {
    //   print('----------- $k -----------'),
    //   print('$k: $v'),
    //   print('----------- $k -----------\n\n\n')
    // });
    //
    // print(pokemon.toString());
    // pokemon

    // strt.forEach((k,v) => {
    //   print('----------- $k -----------'),
    //   print('$k: $v'),
    //   print('----------- $k -----------\n\n\n')
    // });
  }
  else {
    print(response.reasonPhrase);
  }
    await Future.delayed(new Duration(seconds: 3));
    throw Exception('Error en la petición');
}
