import 'package:dart_1_hello/dart_1_hello.dart' as dart_1_hello;

void main(List<String> arguments) {
  print('Hello world: ${dart_1_hello.calculate()}!');

  const myName = 'Fernando';

  print('Hola $myName');
  print('Hola ${ myName.toUpperCase() }');
  print('Hola ${1+1}');

}
