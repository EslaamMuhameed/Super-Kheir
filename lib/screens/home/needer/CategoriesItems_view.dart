import 'package:flutter/material.dart';

import '../../../helper/controller.dart';



class CategoriesItems extends StatelessWidget {
  final Dashboard controller;
  final int index;
  CategoriesItems({required this.controller, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(

      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(


          image: DecorationImage(


              image: AssetImage(controller.items[index].img),
              fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(30)),

      margin: EdgeInsets.only(
        bottom: 10,
        right: 10,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              controller.items[index].title,
              style: TextStyle(color: Colors.white, fontSize: 10),
              textAlign: TextAlign.end,
            ),
            width: double.infinity,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
