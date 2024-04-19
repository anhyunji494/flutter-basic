import 'package:flutter/material.dart';

class Ex05Switch extends StatefulWidget {
  const Ex05Switch({super.key});

  @override
  State<Ex05Switch> createState() => _Ex05SwitchState();
}

class _Ex05SwitchState extends State<Ex05Switch> {

  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Switch(
            value: b,
            onChanged: (v) {

              setState(() {
                b = v!;
              });


              print(v);
            }),
      ),
    );
  }
}
