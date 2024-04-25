import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class ExLocation extends StatelessWidget {
  const ExLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //   내 위치
            getLocation();
          },
          child: Text('내 위치'),
        ),
      ),
    );
  }
}

void getLocation() async {
  // await 적는 이유 : permission 진행 때 버튼 클릭할 때까지 대기
  await Geolocator.requestPermission();

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  print(position);
  print('lon : ${position.longitude}');
  print('lat : ${position.latitude}');
}
