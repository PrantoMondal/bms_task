import 'package:bms_task/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(_) => HomePage(),

      },
    );
  }
}


