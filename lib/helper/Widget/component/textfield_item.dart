import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
   TextFieldItem({ this.text,this.color, this.onTap}) ;
  final text;
  final onTap;
   final color ;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width/1.17,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed:onTap,
          child:  Text(
            text,
            textAlign: TextAlign.center,
            style:  TextStyle(
              color: color,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
