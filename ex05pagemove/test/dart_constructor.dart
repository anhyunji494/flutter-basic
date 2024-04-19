class Animal {
  //   기본적으로 dart의 변수는 null을 허용하지 않기 때문에, int age; 처럼 선언만 하고 초기화하지 않으면 에러가 발생함
  //   => late 키워드를 더해줌
  //   late : 추후에 값을 초기화 하겠다는 키워드
  // late String name;
  // late int age;

  //   => 또는 ?(null 허용) 문자를 더해줌
  // String? s;

  String? name;
  int? age;


  int? i;

//   생성자 조건 : 1) 클래스명과 같다 (대소문자도 구분)
//              2) 반환 타입 X (작성 X)

  Animal(String this.name, int this.age);




//   생성자 오버로딩 : 클래스명.내마음대로네이밍
//   최근 언어에는 오버로딩의 개념이 점점 사라지고 있음
//   유사한 개념 (오버로딩 같은 것~이라고 이해하기)

  Animal.two(this.i);


}
