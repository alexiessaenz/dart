void main(List<String> args){
    emitNumbers().listen((value) {
      print('stream value:  $value');
    });
}

Stream<int> emitNumbers() async*{
  final vluesToEmit = [1,2,3,4,5];
  for(int i in vluesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}