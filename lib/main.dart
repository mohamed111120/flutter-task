import 'package:flutter/material.dart';

import 'package:task5/second_screens/thierd_screen_login_now.dart';
import 'package:task5/theird_screen/theird_screen.dart';

import 'Session_screen/Session_screen.dart';
import 'frist_screen/frist_screen.dart';
import 'second_screens/first_screen_welcome.dart';
import 'second_screens/second_screen_sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext  context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,
      ),
      home: SessionScreen(),
    );
  }
}


