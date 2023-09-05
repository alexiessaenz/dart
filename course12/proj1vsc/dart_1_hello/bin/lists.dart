// Subclasses of list class implement different kinds of lists.
// The most common kinds of lists are:
//
// Fixed-length list
// An error occurs when attempting to use operations that can change the length of the list.
//
// Growable list
// Full implementation of the API defined in the List interface.


main(List<String> args) {

  // Example of fixed-length list:
  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]
  fixedLengthList[0] = 87;
  fixedLengthList.setAll(1, [1, 2, 3]);
  print(fixedLengthList); // [87, 1, 2, 3, 0]
  print(fixedLengthList.length); // 5
  // Fixed length list length can't be changed or increased
  // fixedLengthList.length = 0;  // Throws error
  // fixedLengthList.add(499);    // Throws error

  // Example of growable list:
  final growableList = <String>['A', 'B']; // Creates growable list.

  // To add data to the growable list, use operator[]=, add or addAll.
  growableList[0] = 'G';
  print(growableList); // [G, B]
  growableList.add('X');
  growableList.addAll({'C', 'B'});
  print(growableList); // [G, B, X, C, B]

  growableList.remove('C');
  growableList.removeLast();
  print(growableList); // [G, B, X]
}