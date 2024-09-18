import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'theme/dark_mode.dart';
import 'theme/light_mode.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightmode,
      darkTheme: darkmode,
    );
  }
}