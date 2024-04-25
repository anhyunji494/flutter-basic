import 'package:ex07http/model/weatherModel.dart';
import 'package:flutter/material.dart';

class WeatherMain extends StatelessWidget {
  const WeatherMain({super.key, required this.wm});
  final WeatherModel wm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],

      ),
      body: Container(
          color: Colors.lightBlue[100],
          padding: EdgeInsets.all(12),

          child: Column(
              children:[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(wm.name, style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold
                    ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                      '${wm.main.temp}도',style: TextStyle(fontSize: 38, color: Colors.red),),
                        //Text('00년 00월 00일',style: TextStyle(fontSize: 20)),
                        //Text(DateFormat('yy년 MM월 dd일').format(DateTime.now()),style: TextStyle(fontSize: 20)),

                      ],
                    ),

                  ],
                ),

                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.network(''),
                            //Icon(Icons.sunny),
                            Text('${wm.weather[0].main}현재 날씨 상태1')
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: Colors.grey[300],
                        margin: EdgeInsets.all(24),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.water_drop_outlined, size: 40,),
                            ),
                            Text('현재 습도')
                          ],),
                      ),
                      Container( width: 1,
                        height: double.infinity,
                        color: Colors.grey[300],
                        margin: EdgeInsets.all(24),),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.wind_power, size: 40,),
                            ),
                            Text('현재 풍속'),

                          ],
                        ),
                      ),
                    ],

                  ),
                )
              ]

          )
      ),

    );
  }
}
