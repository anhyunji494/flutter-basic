import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex01Toast(),
    );
  }
}


class Ex01Toast extends StatelessWidget {
  const Ex01Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: (){

            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.pinkAccent,
                textColor: Colors.white,
                fontSize: 16.0
            );


          },
          child: Text('토스트 띄우기'),
        ),
      ),
    );
  }
}
