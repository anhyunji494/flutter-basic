import 'package:flutter/material.dart';


class Ex03Check extends StatefulWidget {
  const Ex03Check({super.key});

  @override
  State<Ex03Check> createState() => _Ex03CheckState();
}

class _Ex03CheckState extends State<Ex03Check> {

  List<bool> checkList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // value : check 여부 - true 체크
            //                   - false 체크 해제

            CheckboxListTile(

                controlAffinity: ListTileControlAffinity.leading,
                title: Text('운동'),
                value: checkList[1], onChanged: (v){

              setState(() {
                checkList[1] = v!;
              });

            }),
            CheckboxListTile(

                controlAffinity: ListTileControlAffinity.trailing,
                value: checkList[2], onChanged: (v){
              setState(() {
                checkList[2] = v!;
              });
            }),
          ],
        ),
      ),

    );
  }
}






class Ex02Check extends StatefulWidget {
  const Ex02Check({super.key});

  @override
  State<Ex02Check> createState() => _Ex02CheckState();
}

class _Ex02CheckState extends State<Ex02Check> {

  bool isChecked = false;


  // List로 체크박스 변수 관리하기
  List<bool> checkList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // value : check 여부 - true 체크
            //                   - false 체크 해제
            Row(
              children: [
                Checkbox(value: checkList[0], onChanged: (v){
                  // onChange 안의 매개변수 (v) : 체크가 해제되어 있으면 - true
                  //                              체크가 되어 있으면 - false
                  print(v);
                  // ? : null 허용 기호
                  // ! : null 불허 기호
                
                  setState(() {
                    checkList[0] = v!;
                  });
                
                
                
                }),
                
                Text('운동')
              ],
            ),
            Checkbox(value: checkList[1], onChanged: (v){

              setState(() {
                checkList[1] = v!;
              });

            }),
            Checkbox(value: checkList[2], onChanged: (v){
              setState(() {
                checkList[2] = v!;
              });
            }),
          ],
        ),
      ),

    );
  }
}
