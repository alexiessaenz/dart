import 'package:http/http.dart' as http;
import 'dart:convert';
var exit = false;
void main(List<String> arguments) async {
  print('Inicio del programa!');
  print('\n\n----poke magic ----');
  print('wii R capturing a pokemon 4 u please B patient...');
  await Future.delayed(new Duration(seconds: 3));
  try{
    int rand = 1 + (new DateTime.now().millisecondsSinceEpoch % 1010);
    String poke = rand.toString(); //also u can write some known pokemon: pikachu,
                                    // psyduck, charmander, bulbasaur, squirtle, mew, mewtwo, articuno, zapdos
    await httpGet(poke );
  } catch(e){ throw new Exception('Error: $e'); }
  finally{ print('Fin del programa!'); }
}
Future<void> httpGet( String poke) async {
  var request = http.Request('GET', Uri.parse('https://pokeapi.co/api/v2/pokemon/'+poke));
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var str = await response.stream.bytesToString();
    dynamic pokemon = json.decode(str);
    print('\n\n'+'pokemon: ');
    print('\t\t'+pokemon['name']);

    print('type(s): ');
    pokemon['types'].forEach((k) => print('\t\t' + k['type']['name']));
    print('abilities: ');
    pokemon['abilities'].forEach((k) => print('\t\t' + k['ability']['name']));
    print('moves: ');
    pokemon['moves'].forEach( (k) => print('\t\t'+k['move']['name']) );
  }
  else
    print(response.reasonPhrase);
}
