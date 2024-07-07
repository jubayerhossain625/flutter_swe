import 'package:flutter/material.dart';

class ProjectBuild extends StatelessWidget {
  const ProjectBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my App"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
          height: 100,
          width: MediaQuery.sizeOf(context).width*0.9,
          color: Colors.green, 
          child: Center(child: Text("Mehrab")))],
      ),
    );
  }
}