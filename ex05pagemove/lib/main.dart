import 'package:ex05pagemove/config/route_name.dart';
import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';
import 'package:ex05pagemove/screen/login_page.dart';
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

      initialRoute: '/',

      // routes: {
      //   '/red':(context){return ExRedPage();},
      //   '/blue':(context)=>ExBluePage(),
      //   '/green': (context)=>ExGreenPage()
      // },

      routes: name,

      home: ExLogin(),
    );
  }
}

class Ex01firstPage extends StatelessWidget {
  const Ex01firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '첫번째 페이지 입니다.',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  //   페이지 이동을 위한 Navigator 객체
                  //   stack으로 페이지 관리 -> 다음 페이지 이동을 위해 push

                  // context : build 메소드 안 context => 수정 없이 유지
                  // route : MaterialPageRoute()

                  // 코드1. 정석대로
                  // Navigator.push(context, MaterialPageRoute(builder: (context){
                  // //   return type이 widget인 이유 : 이동할 페이지를 return해줘야 하기 때문
                  //    return Ex02secondPage();
                  // }));

                  //   코드2. navigator 코드 줄이기
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Ex02secondPage()));
                },
                child: Text('두번째 페이지로 이동')),
            ElevatedButton(
                onPressed: () {

                  // 누적방지 방법 1.
                  // pushReplacement

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => Ex03ThirdPage()));
                },
                child: Text('세번째 페이지로 이동'))
          ],
        ),
      ),
    );
  }
}
class Ex02secondPage extends StatelessWidget {
  const Ex02secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 페이지입니다.'),
      ),
      body: Column(
        children: [
          Text('두번째 페이지입니다.'),
          ElevatedButton(
              onPressed: () {
                // 이전 페이지로 이동 => pop()


                // 누적방지 방법 2.
                // pushAndRemoveUntil : 이전페이지 모두 삭제
                // route 가 true인지 false인지 작성
                // false: 이전 페이지 모두 삭제
                // true : 이전 페이지 삭제하지 않음
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>Ex01firstPage()),(route)=> false);

                // Navigator.pop(context);
              },
              child: Text('첫번째 페이지로 이동')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Ex03ThirdPage()));
              },
              child: Text('세번째 페이지로 이동'))
        ],
      ),
    );
  }
}
class Ex03ThirdPage extends StatelessWidget {
  const Ex03ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('세번째 페이지입니다.'),
      ),
      body: Column(
        children: [
          Text('세번째 페이지입니다.'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Ex01firstPage()));
              },
              child: Text('첫번째 페이지로 이동')),
          ElevatedButton(onPressed: () {}, child: Text('두번째 페이지로 이동'))
        ],
      ),
    );
  }
}
