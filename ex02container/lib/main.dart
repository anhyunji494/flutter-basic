import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex05Kakao(),
    );
  }
}

class Ex05Kakao extends StatelessWidget {
  const Ex05Kakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10)
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/klogo.png', width: 30, height: 30,),
              SizedBox(width: 20,),
              Text('카카오톡으로 로그인하기'),
            ],
          ),
        ),
      ),
    );
  }
}


class Ex04SizedBox extends StatelessWidget {
  const Ex04SizedBox({super.key});

  @override
  Widget build(BuildContext context) {

    // 1. container : 자식 위젯의 크기를 결정
    //                or 꾸미기 (color, border 등)

    // 2. sizedBox : 자식 위젯의 크기를 결정
    //               width, height 값만 설정할 수 있음
    //               Row, column의 위젯들 간 사이공간을 만들기 위해 사용

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Text('Hello'),
            SizedBox(
              width: 120,
              height: 120,
              // child: Text('Hello world'),
            ),
            Text('World')
          ],
        ),
      ),
    );
  }
}


class Ex03width extends StatelessWidget {
  const Ex03width({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100,

          // 가로(세로)가 꽉 차게 하는 코드
          width: double.infinity,

          color: Colors.pink[50],
        ),
      ),
    );
  }
}


class Ex02MakeIcon extends StatelessWidget {
  const Ex02MakeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 32, left: 32, right: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.green[500],
                borderRadius: BorderRadius.circular(40),

              ),
              child: Icon(Icons.call, size: 80, color: Colors.white,),
              ),
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 32, left: 32, right: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.red[500],
                borderRadius: BorderRadius.circular(40),

              ),
              child: Icon(Icons.camera_alt_outlined, size: 80, color: Colors.white,),
            ),
          ],
        ),
        ),

    );
  }
}



class Ex01Container extends StatelessWidget {
  const Ex01Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          // 숫자의 단위는 lp

          width: 200,
          height: 200,

          // 마진 1. fromLTRB(left, top, right, bottom)
          // margin: EdgeInsets.fromLTRB(16, 16, 16, 16),

          // 마진 2. all(double->int)
          // margin: EdgeInsets.all(24.0),

          // 마진 3. only()
          // 메소드, 매개변수가 순서와 상관없이 이름으로 값을 대입
          margin: EdgeInsets.only(top: 20, left: 10),

          // 마진과 동일
          // padding: EdgeInsets.only(right: 20, left: 30, top: 30, bottom: 30),


          alignment: Alignment.center,
          // color: Colors.blueGrey,
          // color와 decoration은 동시에 사용할 수 없음!
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            border: Border.all(color: Colors.black,
                                width: 8, style: BorderStyle.solid
            ),
            
            
            // 지정한만큼 radius 주기
            // borderRadius:  BorderRadius.only(topLeft: Radius.circular(50))


            //  모든 면에 radius 주기
            // borderRadius: BorderRadius.all(Radius.circular(50))
            borderRadius: BorderRadius.circular(50)
            
          ),


          child: Text('hello world',
          style: TextStyle(fontSize: 32),
            //textAlign: TextAlign.center,
          ),
        ),
      )
    );

  }
}
