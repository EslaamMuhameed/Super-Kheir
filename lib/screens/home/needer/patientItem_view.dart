import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../helper/const.dart';
import '../../../helper/controller.dart';
import '../../donationSpeedScreen/fast_donaation/pay-view.dart';

class patientItemsScreen extends StatelessWidget {
  final Dashboard controller;
  final int index;

  patientItemsScreen({required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff9ba0a0),
              width: .2,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(top: 2, left: 4, right: 2),
        child: Stack(
          textDirection: TextDirection.ltr,
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110, right: 150),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 37,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: kPrimaryColor, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          '${controller.items2[index].title1}',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: kPrimaryColor,
                            fontFamily: "FontBold",
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(

                      fit: BoxFit.fitHeight,
                      image: AssetImage(controller.items2[index].img)),
                ),
                height: 110,
                width: double.infinity,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 120,
                  left: 9,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(style: TextStyle(), children: [
                      TextSpan(
                          text: '${controller.items2[index].title}\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '${controller.items2[index].subtitle}\n',
                          style: TextStyle(
                              color: Color(0xff322f2f).withAlpha(200),
                              fontSize: 18,
                              fontWeight: FontWeight.w200)),
                    ]),
                  ),
                )),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 108,bottom: 15),
                    child: InkWell(
                      onTap:  () {
                        Get.to(() => payScreen());
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              "تبرع الان ",
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
