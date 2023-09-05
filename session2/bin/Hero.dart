import 'dart:convert';
void main(){
  final Map<String, dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Money',
    'isAlive' : true
  };

  final ironman = Hero.fromJsone(rawJson);
  print(ironman);
}
class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJsone(Map<String,dynamic> json)
  : name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return 'Hero{'
        'name: $name, '
        'power: $power'
        'isAlive: $isAlive'
        '}';
  }
}