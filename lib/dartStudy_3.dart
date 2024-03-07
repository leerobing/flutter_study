typedef Operation = int Function(int x, int y);

int add(int x, int y) {
  return x + y;
}

int minus({required int x, int y = 2}) {
  return x - y;
}

class Study {

  final String name;
  Study(String name) : this.name = name;
}

class Idol{
  final String name;
  final int account;

  void sayName() {
    print("저의 이름은 $name 입니다.");
  }

  void sqyAccount() {
    print("멤버수는 $account 입니다.");
  }

  //this를 사용할 경우 해당되는 변수에 자동으로 매개변수가 저장된다.
  Idol(this.name, this.account);


}

class BoyGroup extends Idol {
  final String name;
  final int account;
  BoyGroup(this.name, this.account) : super(name,account);

  void sayMale() {
    print("저는 남자 입니다.");
  }
}

class GirlGroup extends Idol {


  GirlGroup(super.name, super.account);

  @override
  void sayName() {
    print("저의 이름은 여자 아이돌 $name 입니다.");
  }

  void sayMale() {
    print("저는 여자 입니다.");
  }

}
class Cache<T>{

  final T data;

  Cache({required this.data});
  
}


void main() {

  Operation ord = add;

  print(ord(1,2));

  Study study = new Study("블랙핑크");
  print(study.name);


  Idol idol = new Idol("블랙핑크", 5);
  print(idol.account);


  BoyGroup boyGroup = new BoyGroup("BTS", 7);
  boyGroup.sayName();
  boyGroup.sqyAccount();
  boyGroup.sayMale();

  GirlGroup girlGroup = new GirlGroup("블랙핑크", 4);
  girlGroup.sayName();
  girlGroup.sqyAccount();

  Idol idol2 = new BoyGroup("동방신기", 5);

  idol2.sayName();
  idol2.sqyAccount();

  
  final cache = Cache<List<int>>(data: [1,2,3,4,5,]);

  final cache2 = Cache<String>(data: "hello-world");
}