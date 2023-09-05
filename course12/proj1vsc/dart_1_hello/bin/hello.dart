import 'package:dart_1_hello/hello_calculate.dart' as hello;

void main(List<String> arguments) {
  print('Hello world: ${hello.calculate()}!');

  const myName = 'Fernando';

  print('Hola $myName');
  print('Hola ${ myName.toUpperCase() }');
  print('Hola ${1+1}');

}
