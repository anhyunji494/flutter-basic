import 'package:ex07http/model/sampleModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ExWeather extends StatelessWidget {
  const ExWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            getWeather();
          },
          child: Text('날씨 가지고 오기'),
        ),
      ),
    );
  }
}


void getWeather() async{
  String url = "https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1";

  Response res = await get(Uri.parse(url));
  print(res.body);

  Sample s = sampleFromJson(res.body);
  print(s.name);
  // London

}