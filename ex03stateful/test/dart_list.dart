void main(){
// List : 순차적으로 데이터를 효율적으로 관리하는 객체
// List<type>
// int형 List

  List<int> intList = [1, 2, 3, 4];

// 해당 타입만 가능



// var, dynamic
  List<dynamic> dList = [1, 'hello', 3.14, 70];

// List 메소드
// 1. 길이 : length (필드)
  print(dList.length);

// 2. 값 가져오기 : 인덱싱
  print(dList[1]);

// 3. 값 추가하기 : add()
  dList.add(100);
  print(dList);

// 4. 값 삭제하기 : remove(값)
  dList.remove(70);
  print(dList);

// 5. 값 삭제하기 2 : removeAt(인덱스)
  dList.removeAt(0);
  print(dList);

// 6. 값 수정하기 : 인덱싱 후 값 삽입
  dList[1] = 3.141592;
  print(dList);

// List generate 메소드
// List<type>.generate(만들 데이터의 개수, (변수선언)=>증가 시 변수에 적용할 식)

  var list1 = List<int>.generate(10, (index) => index++);
  print(list1);

  var list2 = List<String>.generate(10, (index) => '안녕하세요');
  print(list2);
}