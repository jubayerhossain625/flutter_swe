import 'package:flutter/material.dart';
import 'package:flutter_swe/mehrab/mehrab.dart';
import 'package:flutter_swe/signUp_page/signUp.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//removing banner
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: ProjectBuild(),
      home: SignUp(),
    );
  }
}
