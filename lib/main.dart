
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foot_ball/splash_screen/splash_screen.dart';
import 'package:foot_ball/today_games_details_page_screen/today_game_details_page_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:Colors.deepPurple,

  ));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodayGamesDetailsPageView(),
    );
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("AppLifecycleState changed: $state");
    if (state == AppLifecycleState.resumed){
      //_showToast("resumed");
    }
  }

}