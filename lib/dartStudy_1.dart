import 'package:flutter_study/Status.dart';

void main() {
  List<String> memberList = ["제니","리사","지수","로제"];

  var finalList = memberList.where((name) => name == "제니" || name == "지수" );
  var mapList = memberList.map((name) =>"블랙핑크 $name" );

  var reduceList = memberList.reduce((value, element) => value + "," + element);
  var foldList = memberList.fold<int>(0,(value, element) => value + element.length);

  Map<int,String> mamberMap = {
    1:"해리포터",
    2: "말포이",
    3: "헤르미온느"
  };
  
  Set<String> memberSet = new Set();
  
  memberSet.add("제니");
  memberSet.add("리사");
  memberSet.add("지수");


  
  print(mamberMap.keys);
  print(mamberMap.values);
  print(mamberMap[1]);


  print(finalList);
  print(finalList.toList());

  print(mapList);
  print(mapList.toList());

  print(reduceList);

  print(foldList);

  print(memberSet.contains("제니"));
  print(memberSet.toList());
  
  List<String> memberSetList = memberSet.toList();
  memberSetList.add("제니");
  print(memberSetList);
  print(Set.from(memberSetList));


  Status status = Status.approved;
  print(status);

}