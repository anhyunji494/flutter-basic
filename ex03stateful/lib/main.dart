import 'package:flutter/material.dart';
import 'package:flutter_class/ex_checkBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Ex03Check()
    );
  }
}

class Ex01Button extends StatefulWidget {
  const Ex01Button({super.key});

  @override
  State<Ex01Button> createState() => _Ex01ButtonState();

//   람다식 실행코드가 한 단락 =>
// int test1(){
//   return 10;
// }
// int test1()=>10;

// dart 접근 제한자 2개
// public(기본), private(_)

}

class _Ex01ButtonState extends State<Ex01Button> {

  int num1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Text('$num1', style: TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){
              setState(() {
                num1++;
              });

            }, child: Text('증가'))
          ]
        ),
      ),
    );
  }
}
