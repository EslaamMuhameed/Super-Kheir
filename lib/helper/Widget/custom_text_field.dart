// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../const.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String labeltext;
  final bool obscureText;
  final TextInputType keyboardType;
  final double width;

  final int maxLines;

  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    required this.controller,

    required this.labeltext,
    required this.width,

    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[50],
      ),
      child: Center(
        child: TextFormField(

          textAlign: TextAlign.end,
          maxLines: maxLines,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          autocorrect: true,


          style: const TextStyle(color: Color(0xFF062C45), fontSize: 16),
          decoration: InputDecoration(
            hintText: labeltext,
            hintStyle: TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
