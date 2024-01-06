import 'package:flutter/material.dart';

class TextFieldItem1 extends StatelessWidget {
  TextFieldItem1({ this.label, this.maxWidth, this.suffix,  required String text});

  final  label;
  final maxWidth;
  final suffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
          hintText: label,

          constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: 60,
          ),
          prefixIcon: suffix,

          border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      )
      ),
    );
  }
}
