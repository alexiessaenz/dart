void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');

}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    this.power = 'sin poder' });

  // Hero(String pName= 0, String pPower=0){
  //   this.name = pName;
  //   this.power = pPower;
  // }

  @override
  String toString() {
      return 'Hero{'
                'name: $name, '
                'power: $power'
              '}';
  }
}
