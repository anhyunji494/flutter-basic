import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex11Cu(),
    );
  }
}

class Ex11Cu extends StatelessWidget {
  const Ex11Cu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('더보기'),
        actions: [
          Icon(Icons.account_circle),
          SizedBox(width: 20,),
          Icon(Icons.settings),
          SizedBox(width: 20,)
        ],
        leading: Icon(Icons.menu),
      ),
    );
  }
}


class Ex10StackIcon extends StatelessWidget {
  const Ex10StackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Icon(
              Icons.favorite_border_sharp,
              size: 100,
            ),
            Positioned(
              top: 5,
              right: 10,
              child: Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    '1'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Ex09Stack extends StatelessWidget {
  const Ex09Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          // 위젯을 쌓게 도와주는 위젯
          // 겹치는 순서는 코드가 아래로 갈수록 화면상 가장 위로 감
          children: [
            // Positioned 위젯
            // stack 위젯의 하위 위젯들의 위젯 배치를 도와주는 위젯

            Positioned(
              top: 10,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),

            Positioned(
              top: 20,
              right: 10,
              child: Container(
                width: 120,
                height: 120,
                color: Colors.orange,
              ),
            ),

            Positioned(
              top: 10,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.yellow,
              ),
            ),

            Positioned(
              top: 10,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Ex08Row extends StatelessWidget {
  // row - 가로를 관장하고 있는 위젯
  // 가로/세로의 크기를 벗어나는 위젯이 올 경우 해결방법
  // 1. flexible/expanded 사용하여 디바이스의 가로만큼만 동적으로 출력
  // 2. 스크롤
  const Ex08Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 100,
          color: Colors.green,
          child: Row(
            //   start - 시작라인(왼쪽) - default
            //   end - 끝라인(오른쪽)
            //   center - 가운데
            //   spaceBetween - 양끝에 위젯을 배치 한 후 일정 간격으로 여백
            //   spaceEvenly - 공백 포함 위젯들 간 간격이
            //   spaceAround - 양팔벌려 나란히
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            // crossAxisAlignment
            // center - 반대가 되는 축의 가운데 정렬
            // start

            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.blue,
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.yellow,
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.pinkAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Ex07domino extends StatelessWidget {
  const Ex07domino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '아이유와 도미노를 더 맛있게',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        '도미노 매니아되고 ~40% 할인받자!',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 1, child: Image.asset('image/domino.png'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ex06Flexible extends StatelessWidget {
  const Ex06Flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Text('Flexible, Expanded 미사용'),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Container(
            width: 300,
            height: 50,
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 50,
            color: Colors.orange,
          ),
        ],
      ),
      Text('Flexible사용'),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Flexible(
            child: Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              width: 100,
              height: 50,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      Text('Flexible fit tight 사용'),
      SizedBox(
        height: 20,
      ),
      Row(
        // loose , tight의 차이

        // loose : 느슨한 => 해당 위젯들이 공백이 생기는 경우, 공백 그대로 노출
        // tight : 꽉 낀 => 해당 위젯의 크기와 상관없이 가로/세로를 가득 채움
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 50,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      Text('Flexible flex 사용'),
      SizedBox(
        height: 20,
      ),
      Row(
        // loose , tight의 차이

        // loose : 느슨한 => 해당 위젯들이 공백이 생기는 경우, 공백 그대로 노출
        // tight : 꽉 낀 => 해당 위젯의 크기와 상관없이 가로/세로를 가득 채움
        children: [
          Flexible(
            flex: 2,
            child: Container(
              width: 300,
              height: 50,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: 300,
              height: 50,
              color: Colors.orange,
            ),
          ),
          Flexible(
              child: Container(
            width: 300,
            height: 50,
            color: Colors.yellow,
          ))
        ],
      ),
      Text('Expanded 사용'),
      SizedBox(
        height: 20,
      ),
      Row(
        // loose , tight의 차이

        // loose : 느슨한 => 해당 위젯들이 공백이 생기는 경우, 공백 그대로 노출
        // tight : 꽉 낀 => 해당 위젯의 크기와 상관없이 가로/세로를 가득 채움
        children: [
          // expanded
          // flexible fit tight
          Expanded(
            child: Container(
              width: 300,
              height: 50,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              width: 300,
              height: 50,
              color: Colors.orange,
            ),
          ),
          Expanded(
              child: Container(
            width: 300,
            height: 50,
            color: Colors.yellow,
          ))
        ],
      ),
    ])));
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
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'image/klogo.png',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 20,
              ),
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
              child: Icon(
                Icons.call,
                size: 80,
                color: Colors.white,
              ),
            ),
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 32, left: 32, right: 0, bottom: 0),
              decoration: BoxDecoration(
                color: Colors.red[500],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 80,
                color: Colors.white,
              ),
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
            border: Border.all(
                color: Colors.black, width: 8, style: BorderStyle.solid),

            // 지정한만큼 radius 주기
            // borderRadius:  BorderRadius.only(topLeft: Radius.circular(50))

            //  모든 면에 radius 주기
            // borderRadius: BorderRadius.all(Radius.circular(50))
            borderRadius: BorderRadius.circular(50)),

        child: Text(
          'hello world',
          style: TextStyle(fontSize: 32),
          //textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}
