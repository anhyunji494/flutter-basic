import 'package:flutter/material.dart';

class ExLoginSuccessPage extends StatelessWidget {
  const ExLoginSuccessPage({super.key, required this.id});
  // Error: Can't define a const constructor for a class with non-final fields. (Documentation)

  // 방법 1. const 지워주기
  // ㄴ const : 컴파일 할 때 상수로 만들어줌
  // 방법 2. 필드에 final 쓰기
  // ㄴ final : 런타임 할 때 상수로 만들어줌

  // 컴파일 vs 런타임
  // ㄴ 컴파일 : 작성한 코드를 cpu가 이해할 수 있는 언어로 변경 => 작성 시
  // ex. 컴파일 에러 : 오타 났을 때
  // ㄴ 런타임 : 컴파일 된 코드를 실행할 때 컴퓨터가 이해할 수 있는 언어로 변경 => 실행 시
  // ex. 런타임 에러 : server error 처럼 실행했을 때 나는 에러

  // 여기서는 <2번:final> 선택
  // 사유 : const는 작성하자마자 상수로 결정됨
  // 따라서 재시작하지 않는 한 값이 바뀌지 않음
  // = 앱을 최초 한번만 실행 => 컴퓨터 입장에서 메모리 관리가 수월 = 리소스 낭비 방지

  // Error : All final variables must be initialized, but 'id' isn't. (Documentation)
  // but 우리는 값을 받아올 것 => 매개변수 써주기

  // Error : The parameter 'id' can't have a value of 'null' because of its type, but the implicit default value is 'null'. (Documentation)
  // required 키워드 삽입

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$id 님 환영합니다'),
        backgroundColor: Colors.purpleAccent,
      ),

    );
  }
}