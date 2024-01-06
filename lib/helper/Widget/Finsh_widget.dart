import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'custom_appbar.dart';
import '../const.dart';

class speedScreen extends StatelessWidget {
  final String text;

  const speedScreen({ required this.text} );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: customAppBar(context: context,title: " "),
      endDrawer: Drawer(
        child: MainDrawer(),
      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Container(

                width: 150,
                child: Image.asset(
                  'assets/Group 143199.png',

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        color:kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
