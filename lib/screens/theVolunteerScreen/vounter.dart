import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../helper/Widget/custom_button.dart';
import '../../helper/Widget/custom_container.dart';
import '../../helper/controller.dart';
import '../volnterScreeen/VolnteerPerson_view.dart';

class vounterScreen extends StatelessWidget {
  final Dashboard controller;
  final int index;

  vounterScreen({required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            customContaninerScreen(
              suptitle: '${controller.items3[index].title}',
              image: controller.items3[index].img,
              text: '${controller.items3[index].subtitle}',
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 310, left: 60),
          child: CustomButton(
            onTap: () {
              Get.to(() => VoulnteerScreen());
            },
            width: 320,
            title: 'تطوع الأن',
          ),
        ),
      ],
    );
  }
}
