import 'dart:collection';
void main(List<String> args) {
  
  // HashSet<E> class abstract final
  // An unordered hash-table based Set implementation.
  final letters = HashSet<String>();

  // To add data to a set, use add or addAll.

  letters.add('A');
  letters.addAll({'B', 'C', 'D'});

  // To check if the set is empty, use isEmpty or isNotEmpty. To find the number of elements in the set, use length.

  print(letters.isEmpty); // false
  print(letters.length); // 4
  print(letters); // fx {A, D, C, B}

  // To check whether the set has an element with a specific value, use contains.

  final bExists = letters.contains('B'); // true

  // The forEach method calls a function with each element of the set.

  letters.forEach(print);
  // A
  // D
  // C
  // B

  // To make a copy of the set, use toSet.

  final anotherSet = letters.toSet();
  print(anotherSet); // fx {A, C, D, B}

  // To remove an element, use remove.

  final removedValue = letters.remove('A'); // true
  print(letters); // fx {B, C, D}

  // To remove multiple elements at the same time, use removeWhere or removeAll.

  letters.removeWhere((element) => element.startsWith('B'));
  print(letters); // fx {D, C}

  // To removes all elements in this set that do not meet a condition, use retainWhere.

  letters.retainWhere((element) => element.contains('C'));
  print(letters); // {C}

  // To remove all elements and empty the set, use clear.

  letters.clear();
  print(letters.isEmpty); // true
  print(letters); // {}

//   ====================== SplayTreeSet =============

  final planets = SplayTreeSet<String>((a, b) => a.compareTo(b));

  // To add data to a set, use add or addAll.

  planets.add('Neptune');
  planets.addAll({'Venus', 'Mars', 'Earth', 'Jupiter'});

  print(planets); // {Earth, Jupiter, Mars, Neptune, Venus}

  // To check if the set is empty, use isEmpty or isNotEmpty. To find the number of elements in the set, use length.

  final isEmpty = planets.isEmpty; // false
  final length = planets.length; // 5

  // To check whether the set contains a specific element, use contains.

  final marsExists = planets.contains('Mars'); // true

  // To get element value using index, use elementAt.

  final elementAt = planets.elementAt(1);
  print(elementAt); // Jupiter

  // To make a copy of set, use toSet.

  final copySet = planets.toSet(); // a `SplayTreeSet` with the same ordering.
  print(copySet); // {Earth, Jupiter, Mars, Neptune, Venus}

  // To remove an element, use remove.

  final removedPlanet = planets.remove('Mars'); // true
  print(planets); // {Earth, Jupiter, Neptune, Venus}

  // To remove multiple elements at the same time, use removeWhere.

  planets.removeWhere((element) => element.startsWith('J'));
  print(planets); // {Earth, Neptune, Venus}

  // To removes all elements in this set that do not meet a condition, use retainWhere.

  planets.retainWhere((element) => element.contains('Earth'));
  print(planets); // {Earth}

  // To remove all elements and empty the set, use clear.

  planets.clear();
  print(planets.isEmpty); // true
  print(planets); // {}

}