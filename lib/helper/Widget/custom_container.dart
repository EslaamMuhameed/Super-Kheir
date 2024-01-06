import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';
import '../const.dart';

class customContaninerScreen extends StatelessWidget {
  final String image;
  final String text;
  final String suptitle;


  customContaninerScreen({required this.image, required this.text, required this.suptitle, }) ;


  @override
  build(context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
          height: 400,
          width: double.infinity,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xef858e85),
                width: .2,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),

          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child:Container(
                    width: double.infinity,

                    color: Colors.white,
                    child: Image.asset(image,fit:BoxFit.fitHeight,height: 150,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,top: 15),
                child: Text(suptitle,
                    textAlign: TextAlign.end,

                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(text,
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                ),
              ),


                    ]),
                  ),





    );
  }
}

