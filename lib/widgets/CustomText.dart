
import 'package:flutter/material.dart';

class CustomTest extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? wordSpacing;
  final double? letterSpacing;
  final TextOverflow? textOverflow;
  final int? maxLine;
  const CustomTest({super.key,required this.text, this.color, this.fontSize, this.fontWeight, this.textAlign, this.wordSpacing, this.letterSpacing, this.textOverflow, this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: TextStyle(
          fontWeight: fontWeight ?? FontWeight.normal ,
          fontSize:fontSize ?? 14 ,
          color: color ?? Colors.black,
        wordSpacing: wordSpacing ?? 0.5,
          letterSpacing: letterSpacing ?? 0.1
      ),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine?? 1000,
      overflow:textOverflow ??TextOverflow.ellipsis,

    );
  }
}
