import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';
import 'package:flutter/material.dart';

class ExBottom extends StatefulWidget {
  const ExBottom({super.key});

  @override
  State<ExBottom> createState() => _ExBottomState();
}

class _ExBottomState extends State<ExBottom> {
  int select_index = 0;
  List<Widget> list_widget = [ExBluePage(), ExRedPage(), ExGreenPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottom navigation 예제'),
      ),


      body: list_widget[select_index]

      // Center(
      //   child: Text('첫번째 페이지 입니다.'),
      // )
      ,


      bottomNavigationBar: BottomNavigationBar(
        items: [

          // 주의사항 : items는 하나를 사용할 수 없음. 복수여야 함.
          // 주의사항 : label은 필수요소가 아니지만 반드시 작성해야 함(쓰지 않으면 작동X)

          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          label: '계정'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),
          label: '채팅'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: '')
        ],
        



        // currentIntex : 현재 선택된 index
        currentIndex: select_index,

        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[400],

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,


        onTap: (i){

          setState(() {
            select_index = i;
          });


        },

      ),




    );
  }
}
