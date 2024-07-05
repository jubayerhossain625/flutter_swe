
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App Bar",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width*0.9,
              color: Colors.red,
              child: const Text("Aranya Mahmud"),
            )
          ],
        ),
      ),
    );
  }
}
