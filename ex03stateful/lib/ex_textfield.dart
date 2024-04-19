import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Ex07Login extends StatefulWidget {
  const Ex07Login({super.key});



  @override
  State<Ex07Login> createState() => _Ex07LoginState();
}

class _Ex07LoginState extends State<Ex07Login> {

  var input = '';

  TextEditingController idCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('로그인 화면', style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
        backgroundColor: Colors.yellowAccent,

      ),

      body: GestureDetector(

        onTap : (){
          FocusScope.of(context).unfocus();
        },

        child: SingleChildScrollView(
        
          // onpressed나 ontap 등 제스쳐 기능을 가지고 있지 않는 위젯들에게
          // 제스처 기능을 부여해주는 위젯 => GestureDetector
          

          child: Center(
            child: Column(
              children: [
          
          
                Image.asset('./image/littleryan.gif'),
          
          
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(keyboardType: TextInputType.emailAddress,
                  controller: idCon,
                  decoration: InputDecoration(
                    hintText: 'example@example.com',
                    hintStyle: TextStyle(color: Colors.grey[300]),
                    label: Text('email 입력')
                  ),
                  ),
                ),
          
          
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(keyboardType: TextInputType.text,
                    controller: pwCon,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('비밀번호 입력')
                    ),
                  ),
                ),
          
          
                ElevatedButton(onPressed: (){
                  setState(() {
                    input = '아이디:' + idCon.text + ' 비밀번호: ' + pwCon.text ;
                  });
                  print(input);
                }, child: Text('로그인하기'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Ex05Textfield extends StatefulWidget {
  const Ex05Textfield({super.key});

  @override
  State<Ex05Textfield> createState() => _Ex05TextfieldState();
}
class _Ex05TextfieldState extends State<Ex05Textfield> {

  // 바뀔 텍스트를 담을 변수
  String s = '';

  @override
  Widget build(BuildContext context) {
    // 값이 바뀌는 것을 감지하는 클래스
    // textfield의 값을 가지고 오기 위해 controller 객체 생성 이후
    // textfield에 controller 요소에 연결
    TextEditingController emailCon = TextEditingController();
    TextEditingController pwCon = TextEditingController();

    // textfield 하나당 하나의 컨트롤러

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: emailCon,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'example@example.com',
                  hintStyle: TextStyle(
                      color: Colors.grey[300], fontWeight: FontWeight.w400),
                  label: Row(
                    children: [
                      Icon(Icons.account_circle),
                      Text('Email'),
                    ],
                  )),
            ),
            TextField(
              controller: pwCon,
              decoration: InputDecoration(
                  label: Row(
                children: [Icon(Icons.key), Text('password')],
              )),

              keyboardType: TextInputType.text,
              //   비밀번호처럼 보이는 설정
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  //  controller.text
                  print(emailCon.text);

                  setState(() {
                    s = emailCon.text;
                  });
                },
                child: Text('로그인')),
            SizedBox(height: 50),
            Text('$s')
          ],
        ),
      ),
    );
  }
}
