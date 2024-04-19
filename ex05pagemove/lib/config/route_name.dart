import 'package:ex05pagemove/screen/ex_blue_page.dart';
import 'package:ex05pagemove/screen/ex_green_page.dart';
import 'package:ex05pagemove/screen/ex_red_page.dart';

class RouteName{

  // static : 메모리

  static const redPage = '/red';
  static const bluePage = '/blue';
  static const greenPage = '/green';

}

var name = {
  RouteName.redPage : (context)=>ExRedPage(),
  RouteName.bluePage : (context)=>ExBluePage(),
  RouteName.greenPage : (context)=>ExGreenPage()
};

