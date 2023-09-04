// import 'dart:js_util';

import 'package:course/course.dart' as course;

void main(List<String> arguments) {
  print('Hello world: ${course.calculate()}!');
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];


  dynamic errorMessage = 'Hello';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);


//for (int i = 0; i < 5; i++) {
//    print('hello ${i + 1}');
//  }


  print(greetEveryone());
  print('suma: ${addTwoNumber(10, 20)}');
  print(greetPerson(name: 'Fernando', message: 'Hi, '));
}
  String greetEveryone() => 'Hello everyone!';
  int addTwoNumber(int a, int b) => a + b;

  int addTwoNumberOptional(int a, [int b = 0]) {
    return a + b;
  }

  String greetPerson({ required String name, String message = 'Holla, ' }){
    return '$message Fernando';
  }

