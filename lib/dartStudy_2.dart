
void main() {

  var result1 = addTwoNumber(1, 2);

  var result2 = addTwoNamedNumber(a: 1, b: 3);

  /**
   * 익명 함수와 람다
   * **/
  List<String> memberList = ["제니","리사"];
  List<int> numbers = [1,2,3,4,5];

var newMemberList = memberList.map((name) => "블랙핑크 $name");
var newNumbers = numbers.reduce((value, element) => value + element);
print(newNumbers);


print(newMemberList.toList());


  print(result1);
  print(result2);
}


int addTwoNumber(int a, int b) {
  return a+ b;
}

int addTwoNamedNumber ({required int a,required int b}) {
  return a + b;
}