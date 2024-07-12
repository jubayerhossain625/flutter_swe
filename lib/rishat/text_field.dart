import 'package:flutter/material.dart';

class textFild extends StatelessWidget {
  final String hint;
  final bool obscure ;
   const textFild({super.key, required this.hint ,this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(

          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 243, 109, 154)))),
    );
  }
}
