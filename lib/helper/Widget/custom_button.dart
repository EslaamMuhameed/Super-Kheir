import 'package:flutter/material.dart';

import '../const.dart';

class CustomButton extends StatefulWidget {
  final Function() onTap;
  final String title;
  final double width;
  // ignore: use_key_in_widget_constructors
   CustomButton({
    required this.width,
     required this.title,
     required this.onTap,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontFamily: "FontBold",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
