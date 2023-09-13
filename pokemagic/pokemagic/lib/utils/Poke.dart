import 'dart:convert';
import 'package:http/http.dart' as http;

class Poke {
  String text;

  Poke({this.text = ''});

  String get getText {
    return text;
  }
  void greet() {
    print('Inicio del programa!');
    this.text='';
    print('\n\n----poke magic ----');
    this.text = '\n\n----poke magic ----';
    var text = '                                   ,\'\\\n'+ '      _.----.       ____         ,\'  _\   ___    ___     ____\n'+ '  _,-\'       `.    |    |  /`.   \\,-\'    |   \\  /   |   |    \\  |`.\n'+ '  \\      __    \\   \'-.  | /   `.  ___    |    \\/    |   \'-.   \\ |  |\n'+ '   \\.    \\ \\   |  __ |  |/    ,\',\'_  \`.  |          | __  |    \\|  |\n'+ '    \\    \\/   /,\' _\`.|      ,\' / / / /   |          ,\' _\`.|     |  |\n'+ '     \\     ,-\'/  /   \\    ,\'   | \\/ / ,\`.|         /  /   \\  |     |\n'+ '      \\    \\ |   \\_/  |   \`-.  \\    \`\'  /|  |    ||   \\_/  | |\\    |\n'+ '       \\    \\ \\      /       \`-.\`.___,-\' |  |\\  /| \\      /  | |   |\n'+ '        \\    \\ \`.__,\'|  |\`-._    \`|      |__| \\/ |  \`.__,\'|  | |   |\n'+ '         \\_.-\'       |__|    \`-._ |              \'-.|     \'-.| |   |\n'+ '                                 \`\'                            \'-._|\n';
    print(text);
    this.text += text;

    print('wii R capturing a pokemon 4 u please B patient...');
    this.text += '\n' + 'wii R capturing a pokemon 4 u please B patient...';

  }

  Future<void> start() async {

    try {
      int rand = 1 + (new DateTime.now().millisecondsSinceEpoch % 1010);
      String poke = rand
          .toString(); //here also u can write the name of some known pokemon like : pikachu,
      // psyduck, charmander, bulbasaur, squirtle, mew, mewtwo, articuno, zapdos
     // await Future.delayed(const Duration(seconds: 3));
      await httpGet(poke);
    } catch (e) {
      throw new Exception('Error: $e');
    }
    finally {
      print('Fin del programa!');
    }
  }

  Future<void> httpGet(String poke) async {
    this.text = '';
    var request = http.Request(
        'GET', Uri.parse('https://pokeapi.co/api/v2/pokemon/' + poke));
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var str = await response.stream.bytesToString();
      dynamic pokemon = json.decode(str);
      print('\n\n' + 'pokemon: ');
      text += '\n\n' + 'pokemon: ';
      print('\t\t' + pokemon['name']);
      text += '\n'+ '\t\t' + pokemon['name'];

      print('type(s): ');
      text += '\n' + 'type(s): ';
      pokemon['types'].forEach((k) => {
        print('\t\t' + k['type']['name']),
        text += '\n' + '\t\t' + k['type']['name']
      });

      print('abilities: ');
      text += '\n' + 'abilities: ';
      pokemon['abilities'].forEach((k) => {
        print('\t\t' + k['ability']['name']),
        text += '\n' + '\t\t' + k['ability']['name']
      });
      print('moves: ');
      pokemon['moves'].forEach((k) => {
        print('\t\t' + k['move']['name']),
        text += '\n' + '\t\t' + k['move']['name']
      });
      // return text;
    }
    else
      print(response.reasonPhrase);
  }

}
