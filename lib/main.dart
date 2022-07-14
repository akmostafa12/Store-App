import 'package:ecommerce/Screens/home.dart';
import 'package:ecommerce/Screens/update.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id : (context) => HomePage(),
        Update.id : (context)=> Update()
      },
      initialRoute: HomePage.id,
    );
  }
}
