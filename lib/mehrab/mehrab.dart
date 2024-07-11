import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProjectBuild extends StatelessWidget {
  const ProjectBuild({super.key});

//Appbar class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome to my App"),
        //backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.face),
          Icon(Icons.add),
          Icon(Icons.delete),
        ],
        elevation: 0.1,
        backgroundColor:Colors.yellow,
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