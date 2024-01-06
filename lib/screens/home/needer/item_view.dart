import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../helper/Widget/custom_button.dart';
import '../../../helper/Widget/custom_container.dart';
import '../../../helper/controller.dart';
import '../../donationSpeedScreen/fast_donaation/pay-view.dart';



class allItems extends StatelessWidget {
  final Dashboard controller;
  final int index;

  allItems({required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            customContaninerScreen(
              suptitle: '${controller.items2[index].title}',
              image: controller.items2[index].img,
              text: '${controller.items2[index].subtitle}',
            ),


          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250,left: 50),
          child: CustomButton(
            onTap: () {
              Get.to(() =>  payScreen());
            },

            width: 100,
            title: 'تبرع الان',
          ),
        ),
      ],
    );
  }
}
