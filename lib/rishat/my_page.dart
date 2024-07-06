import 'package:flutter/material.dart';

class rishat extends StatelessWidget {
  const rishat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Rishat's Appbar",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.blue[100],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              color: Colors.amber[100],
              child: const Text(
                "My name is: Md. Ali Shahorier Rishat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 3,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}