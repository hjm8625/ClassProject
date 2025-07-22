import 'package:flutter/material.dart';
import 'package:flutter_application_techno_1/screens/demo3_splash.dart'; // 스플래쉬 화면


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // 앱 시작 시 스플래쉬 먼저 보여줌
    );
  }
}


//flutter build apk --release --target-platform=android-arm64
