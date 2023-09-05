import 'dart:collection';

void main(List<String> args) {
  final Map<String, dynamic> pokemon = {
    'name' : 'ditto',
    'hp' : 100,
    'isAlive' : true,
    'abilities' : <String>['impostor'],
    'sprites' : {
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');

  print("-------- For Each --------");
  pokemon.forEach((key, value) {
  print('$key \t $value');
  // name       ditto
  // hp         100
  // isAlive    true
  // abilities  [impostor]
  // sprites    {1: ditto/front.png, 2: ditto/back.png}

  });

  print("-------- SplayTreeMap --------");
  // SplayTreeMap<K, V> class final
  //
  // A Map of objects that can be ordered relative to each other.

  // Example:

  final planetsByMass = SplayTreeMap<double, String>((a, b) => a.compareTo(b));

  // To add data to a map, use operator[]=, addAll or addEntries.

  planetsByMass[0.06] = 'Mercury';
  planetsByMass
      .addAll({0.81: 'Venus', 1.0: 'Earth', 0.11: 'Mars', 317.83: 'Jupiter'});

  // To check if the map is empty, use isEmpty or isNotEmpty. To find the number of map entries, use length.

  print(planetsByMass.isEmpty); // false
  print(planetsByMass.length); // 5

  // The forEach method calls a function for each key/value entry of the map.

  planetsByMass.forEach((key, value) {
  print('$key \t $value');
  // 0.06    Mercury
  // 0.11    Mars
  // 0.81    Venus
  // 1.0     Earth
  // 317.83  Jupiter
  });

  // To check whether the map has an entry with a specific key, use containsKey.

  final keyOneExists = planetsByMass.containsKey(1.0); // true
  final keyFiveExists = planetsByMass.containsKey(5); // false

  // To check whether the map has an entry with a specific value, use containsValue.

  final earthExists = planetsByMass.containsValue('Earth'); // true
  final plutoExists = planetsByMass.containsValue('Pluto'); // false

  // To remove an entry with a specific key, use remove.

  final removedValue = planetsByMass.remove(1.0);
  print(removedValue); // Earth

  // To remove multiple entries at the same time, based on their keys and values, use removeWhere.

  planetsByMass.removeWhere((key, value) => key <= 1);
  print(planetsByMass); // {317.83: Jupiter}

  // To conditionally add or modify a value for a specific key, depending on whether there already is an entry with that key, use putIfAbsent or update.

  planetsByMass.update(1, (v) => '', ifAbsent: () => 'Earth');
  planetsByMass.putIfAbsent(317.83, () => 'Another Jupiter');
  print(planetsByMass); // {1.0: Earth, 317.83: Jupiter}

  // To update the values of all keys, based on the existing key and value, use updateAll.

  planetsByMass.updateAll((key, value) => 'X');
  print(planetsByMass); // {1.0: X, 317.83: X}

  // To remove all entries and empty the map, use clear.

  planetsByMass.clear();
  print(planetsByMass.isEmpty); // false
  print(planetsByMass); // {}

}