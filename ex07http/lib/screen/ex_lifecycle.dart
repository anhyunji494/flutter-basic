import 'package:flutter/material.dart';

class ExLife extends StatefulWidget {
  // stateful로 만들어진 이유
  // stateful에만 initstate가 존재

  const ExLife({super.key});

  @override
  State<ExLife> createState() => _ExLifeState();
}

class _ExLifeState extends State<ExLife> {


  void initState(){
    super.initState();

    print('first init method');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('first dispose method');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>ExLifeSecond()));
          },
          child: Text('next'),
        ),
      ),
    );
  }

}
class ExLifeSecond extends StatefulWidget {
  const ExLifeSecond({super.key});

  @override
  State<ExLifeSecond> createState() => _ExLifeSecondState();
}

class _ExLifeSecondState extends State<ExLifeSecond> {
  @override
  void initState() {
    // TODO: implement initState
    print('second init method');
  }


  @override
  void dispose() {
    // TODO: implement dispose
    print('second dispose method');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello'),),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}
