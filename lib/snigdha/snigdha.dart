import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width*0.9,
              color: Color.fromARGB(255, 219, 244, 54),
              child: const Text("Snigdha"),
            ),
            Container(
              height: 30,
              width: MediaQuery.sizeOf(context).width*1,
              color: Color.fromARGB(255, 255, 255, 255),
            )
          ],
    ),
    );
  }
}
