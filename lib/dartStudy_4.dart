import 'dart:async';

void main () {
  //  addNumbers(1, 1);
  // syncAddNumbers(1, 3);

  final controller = StreamController();
  final stream = controller.stream;

  final streamList = stream.listen((event) {
    print(event);
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

}


// void main() async {
//   await syncAddNumbers(1, 2);
//   await syncAddNumbers(2, 3);
// }

void addNumbers(int x, int y) {
  print( "$x + $y, 계산시작");

  Future.delayed(Duration(seconds: 3),(){
    print("$x + $y = ${x + y}");
  });

  print( "$x + $y, 계산 종료");
}


Future<void> syncAddNumbers(int x, int y) async{
  print( "$x + $y, 계산시작");

  await Future.delayed(Duration(seconds: 3),(){
    print("$x + $y = ${x + y}");
  });

  print( "$x + $y, 계산 종료");

}

