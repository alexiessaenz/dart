mixin A {
  String getMessage() => 'A';
}

mixin B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

void main() {
  String result = '';

  final ab = AB();
  result += ab.getMessage();
  print(result);

  final ba = BA();
  result += ba.getMessage();

  print(result);
}