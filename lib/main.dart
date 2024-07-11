import 'package:flutter/material.dart';
import 'package:alifbook/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Alifbook",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark
      ),
      useMaterial3: true
    ),
    home: const Homepage(),
  ));
}