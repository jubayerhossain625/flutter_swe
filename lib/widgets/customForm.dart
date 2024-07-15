import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? borderColor;
  final Color? errorColor;
  final double? borderRadius;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final VoidCallback ?onTap;
  final bool? isReadOnly;
  final Key? fromKey;
  const CustomForm({super.key,  this.controller, this.fillColor, this.borderColor, this.borderRadius, this.hintText, this.suffix, this.prefix, this.keyboardType, this.errorColor = Colors.red, this.onTap, this.isReadOnly, this.fromKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: TextFormField(
        controller: controller ?? TextEditingController(),
        keyboardType: TextInputType.phone,
        onTap: onTap,readOnly: isReadOnly ?? false,
        decoration:  InputDecoration(
            hintText: hintText ?? "Enter now",
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
                borderSide: BorderSide(
                    color: borderColor ??  Colors.blue
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
                borderSide: BorderSide(
                    color: borderColor ??  Colors.blue
                )
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
                borderSide: BorderSide(
                    color: errorColor??Colors.blue
                )
            ),
            suffix: suffix,
            prefix: prefix,
            fillColor: fillColor?? Colors.white
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Is required';
          }
          return null;
        },
      ),
    )
    ;
  }
}
