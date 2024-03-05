void main() {
  List<String> memberList = ["제니","리사","지수","로제"];

  var finalList = memberList.where((name) => name == "제니" || name == "지수" );
  var mapList = memberList.map((name) =>"블랙핑크 $name" );

  var reduceList = memberList.reduce((value, element) => value + "," + element);
  var foldList = memberList.fold<int>(0,(value, element) => value + element.length);




  print(finalList);
  print(finalList.toList());

  print(mapList);
  print(mapList.toList());

  print(reduceList);

  print(foldList);


}