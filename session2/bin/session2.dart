import 'package:session2/session2.dart' as session2;

void main(List<String> arguments) {
  print('Hello world: ${session2.calculate()}!');

  functionOne(1);

}
  void functionOne(int a){
    if(a ==3 )
      print('el parametro es 3');
    else
      print('el parametro no es 3');
  }

  void functionTwo(int a) => print('el parametro ${ a == 3 ? 'es' : 'no es'} 3');
