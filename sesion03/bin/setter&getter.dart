void main(List<String> args){
    final mySquare = Square(side: -10);
    print('area: ${mySquare.calcularArea}');
}

class Square {
  double _side;

  Square({required double side})
  : assert(side >= 0, 'side must be >= 0'),
  _side = side;

  double get side => _side;

  set side(double value) {
    print('setting new value $value');
    if(value < 0 ) throw 'value must be >= 0';
    _side = value;
  }

  double calcularArea(){
    return _side * _side;
  }

  double get Area {
    return _side * _side;
  }
}

